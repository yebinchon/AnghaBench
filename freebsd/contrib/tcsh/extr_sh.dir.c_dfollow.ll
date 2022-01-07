; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.dir.c_dfollow.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.dir.c_dfollow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Strbuf = type { i8*, i32 }
%struct.varent = type { i8** }

@G_ERROR = common dso_local global i32 0, align 4
@symlinks = common dso_local global i64 0, align 8
@SYM_IGNORE = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENOTDIR = common dso_local global i32 0, align 4
@ERR_SYSTEM = common dso_local global i32 0, align 4
@STRdotsl = common dso_local global i32 0, align 4
@STRdotdotsl = common dso_local global i32 0, align 4
@STRcdpath = common dso_local global i32 0, align 4
@Strbuf_INIT = common dso_local global %struct.Strbuf zeroinitializer, align 8
@SYM_EXPAND = common dso_local global i64 0, align 8
@printd = common dso_local global i32 0, align 4
@bequiet = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32)* @dfollow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @dfollow(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.varent*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.Strbuf, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = call i8* @Strsave(i8* %16)
  br label %22

18:                                               ; preds = %2
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* @G_ERROR, align 4
  %21 = call i8* @globone(i8* %19, i32 %20)
  br label %22

22:                                               ; preds = %18, %15
  %23 = phi i8* [ %17, %15 ], [ %21, %18 ]
  store i8* %23, i8** %4, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @cleanup_push(i8* %24, i32 (i8*)* @xfree)
  %26 = load i8*, i8** %4, align 8
  %27 = load i64, i64* @symlinks, align 8
  %28 = load i64, i64* @SYM_IGNORE, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i8* @dnormalize(i8* %26, i32 %30)
  store i8* %31, i8** %6, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i8* @short2str(i8* %32)
  %34 = call i64 @chdir(i8* %33)
  %35 = icmp sge i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %22
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @cleanup_until(i8* %37)
  %39 = load i8*, i8** %6, align 8
  %40 = call i8* @dgoto(i8* %39)
  store i8* %40, i8** %3, align 8
  br label %226

41:                                               ; preds = %22
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @xfree(i8* %42)
  %44 = load i8*, i8** %4, align 8
  %45 = call i8* @short2str(i8* %44)
  %46 = call i64 @chdir(i8* %45)
  %47 = icmp sge i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %41
  %49 = load i8*, i8** %4, align 8
  %50 = call i32 @cleanup_ignore(i8* %49)
  %51 = load i8*, i8** %4, align 8
  %52 = call i32 @cleanup_until(i8* %51)
  %53 = load i8*, i8** %4, align 8
  %54 = call i8* @dgoto(i8* %53)
  store i8* %54, i8** %3, align 8
  br label %226

55:                                               ; preds = %41
  %56 = load i32, i32* @errno, align 4
  %57 = load i32, i32* @ENOENT, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %55
  %60 = load i32, i32* @errno, align 4
  %61 = load i32, i32* @ENOTDIR, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = load i32, i32* @errno, align 4
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* @ERR_SYSTEM, align 4
  %66 = load i8*, i8** %4, align 8
  %67 = call i8* @short2str(i8* %66)
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @strerror(i32 %68)
  %70 = call i32 @stderror(i32 %65, i8* %67, i32 %69)
  br label %71

71:                                               ; preds = %63, %59, %55
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* @errno, align 4
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %72
  %75 = load i8*, i8** %4, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 0
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp ne i32 %78, 47
  br i1 %79, label %80, label %187

80:                                               ; preds = %74
  %81 = load i32, i32* @STRdotsl, align 4
  %82 = load i8*, i8** %4, align 8
  %83 = call i32 @prefix(i32 %81, i8* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %187, label %85

85:                                               ; preds = %80
  %86 = load i32, i32* @STRdotdotsl, align 4
  %87 = load i8*, i8** %4, align 8
  %88 = call i32 @prefix(i32 %86, i8* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %187, label %90

90:                                               ; preds = %85
  %91 = load i32, i32* @STRcdpath, align 4
  %92 = call %struct.varent* @adrof(i32 %91)
  store %struct.varent* %92, %struct.varent** %7, align 8
  %93 = icmp ne %struct.varent* %92, null
  br i1 %93, label %94, label %187

94:                                               ; preds = %90
  %95 = load %struct.varent*, %struct.varent** %7, align 8
  %96 = getelementptr inbounds %struct.varent, %struct.varent* %95, i32 0, i32 0
  %97 = load i8**, i8*** %96, align 8
  %98 = icmp ne i8** %97, null
  br i1 %98, label %99, label %187

99:                                               ; preds = %94
  %100 = bitcast %struct.Strbuf* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %100, i8* align 8 bitcast (%struct.Strbuf* @Strbuf_INIT to i8*), i64 16, i1 false)
  %101 = load %struct.varent*, %struct.varent** %7, align 8
  %102 = getelementptr inbounds %struct.varent, %struct.varent* %101, i32 0, i32 0
  %103 = load i8**, i8*** %102, align 8
  store i8** %103, i8*** %11, align 8
  br label %104

104:                                              ; preds = %180, %99
  %105 = load i8**, i8*** %11, align 8
  %106 = load i8*, i8** %105, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %183

108:                                              ; preds = %104
  %109 = load i8**, i8*** %11, align 8
  %110 = load i8*, i8** %109, align 8
  %111 = call i64 @Strlen(i8* %110)
  store i64 %111, i64* %12, align 8
  %112 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %10, i32 0, i32 1
  store i32 0, i32* %112, align 8
  %113 = load i64, i64* %12, align 8
  %114 = icmp ugt i64 %113, 0
  br i1 %114, label %115, label %130

115:                                              ; preds = %108
  %116 = load i8**, i8*** %11, align 8
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 @Strbuf_append(%struct.Strbuf* %10, i8* %117)
  %119 = load i8**, i8*** %11, align 8
  %120 = load i8*, i8** %119, align 8
  %121 = load i64, i64* %12, align 8
  %122 = sub i64 %121, 1
  %123 = getelementptr inbounds i8, i8* %120, i64 %122
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp ne i32 %125, 47
  br i1 %126, label %127, label %129

127:                                              ; preds = %115
  %128 = call i32 @Strbuf_append1(%struct.Strbuf* %10, i8 signext 47)
  br label %129

129:                                              ; preds = %127, %115
  br label %130

130:                                              ; preds = %129, %108
  %131 = load i8*, i8** %4, align 8
  %132 = call i32 @Strbuf_append(%struct.Strbuf* %10, i8* %131)
  %133 = call i32 @Strbuf_terminate(%struct.Strbuf* %10)
  %134 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %10, i32 0, i32 0
  %135 = load i8*, i8** %134, align 8
  %136 = load i64, i64* @symlinks, align 8
  %137 = load i64, i64* @SYM_IGNORE, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %143, label %139

139:                                              ; preds = %130
  %140 = load i64, i64* @symlinks, align 8
  %141 = load i64, i64* @SYM_EXPAND, align 8
  %142 = icmp eq i64 %140, %141
  br label %143

143:                                              ; preds = %139, %130
  %144 = phi i1 [ true, %130 ], [ %142, %139 ]
  %145 = zext i1 %144 to i32
  %146 = call i8* @dnormalize(i8* %135, i32 %145)
  store i8* %146, i8** %6, align 8
  %147 = load i8*, i8** %6, align 8
  %148 = call i8* @short2str(i8* %147)
  %149 = call i64 @chdir(i8* %148)
  %150 = icmp sge i64 %149, 0
  br i1 %150, label %151, label %159

151:                                              ; preds = %143
  store i32 1, i32* @printd, align 4
  %152 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %10, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 @xfree(i8* %153)
  %155 = load i8*, i8** %4, align 8
  %156 = call i32 @cleanup_until(i8* %155)
  %157 = load i8*, i8** %6, align 8
  %158 = call i8* @dgoto(i8* %157)
  store i8* %158, i8** %3, align 8
  br label %226

159:                                              ; preds = %143
  %160 = load i8*, i8** %4, align 8
  %161 = call i8* @short2str(i8* %160)
  %162 = call i64 @chdir(i8* %161)
  %163 = icmp sge i64 %162, 0
  br i1 %163, label %164, label %176

164:                                              ; preds = %159
  store i32 1, i32* @printd, align 4
  %165 = load i8*, i8** %6, align 8
  %166 = call i32 @xfree(i8* %165)
  %167 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %10, i32 0, i32 0
  %168 = load i8*, i8** %167, align 8
  %169 = call i32 @xfree(i8* %168)
  %170 = load i8*, i8** %4, align 8
  %171 = call i32 @cleanup_ignore(i8* %170)
  %172 = load i8*, i8** %4, align 8
  %173 = call i32 @cleanup_until(i8* %172)
  %174 = load i8*, i8** %4, align 8
  %175 = call i8* @dgoto(i8* %174)
  store i8* %175, i8** %3, align 8
  br label %226

176:                                              ; preds = %159
  br label %177

177:                                              ; preds = %176
  %178 = load i8*, i8** %6, align 8
  %179 = call i32 @xfree(i8* %178)
  br label %180

180:                                              ; preds = %177
  %181 = load i8**, i8*** %11, align 8
  %182 = getelementptr inbounds i8*, i8** %181, i32 1
  store i8** %182, i8*** %11, align 8
  br label %104

183:                                              ; preds = %104
  %184 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %10, i32 0, i32 0
  %185 = load i8*, i8** %184, align 8
  %186 = call i32 @xfree(i8* %185)
  br label %187

187:                                              ; preds = %183, %94, %90, %85, %80, %74
  %188 = load i8*, i8** %4, align 8
  %189 = call i8* @varval(i8* %188)
  store i8* %189, i8** %6, align 8
  %190 = load i8*, i8** %6, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 0
  %192 = load i8, i8* %191, align 1
  %193 = sext i8 %192 to i32
  %194 = icmp eq i32 %193, 47
  br i1 %194, label %201, label %195

195:                                              ; preds = %187
  %196 = load i8*, i8** %6, align 8
  %197 = getelementptr inbounds i8, i8* %196, i64 0
  %198 = load i8, i8* %197, align 1
  %199 = sext i8 %198 to i32
  %200 = icmp eq i32 %199, 46
  br i1 %200, label %201, label %213

201:                                              ; preds = %195, %187
  %202 = load i8*, i8** %6, align 8
  %203 = call i8* @short2str(i8* %202)
  %204 = call i64 @chdir(i8* %203)
  %205 = icmp sge i64 %204, 0
  br i1 %205, label %206, label %213

206:                                              ; preds = %201
  %207 = load i8*, i8** %4, align 8
  %208 = call i32 @cleanup_until(i8* %207)
  %209 = load i8*, i8** %6, align 8
  %210 = call i8* @Strsave(i8* %209)
  store i8* %210, i8** %4, align 8
  store i32 1, i32* @printd, align 4
  %211 = load i8*, i8** %4, align 8
  %212 = call i8* @dgoto(i8* %211)
  store i8* %212, i8** %3, align 8
  br label %226

213:                                              ; preds = %201, %195
  %214 = load i32, i32* @bequiet, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %223, label %216

216:                                              ; preds = %213
  %217 = load i32, i32* @ERR_SYSTEM, align 4
  %218 = load i8*, i8** %4, align 8
  %219 = call i8* @short2str(i8* %218)
  %220 = load i32, i32* %8, align 4
  %221 = call i32 @strerror(i32 %220)
  %222 = call i32 @stderror(i32 %217, i8* %219, i32 %221)
  br label %223

223:                                              ; preds = %216, %213
  %224 = load i8*, i8** %4, align 8
  %225 = call i32 @cleanup_until(i8* %224)
  store i8* null, i8** %3, align 8
  br label %226

226:                                              ; preds = %223, %206, %164, %151, %48, %36
  %227 = load i8*, i8** %3, align 8
  ret i8* %227
}

declare dso_local i8* @Strsave(i8*) #1

declare dso_local i8* @globone(i8*, i32) #1

declare dso_local i32 @cleanup_push(i8*, i32 (i8*)*) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i8* @dnormalize(i8*, i32) #1

declare dso_local i64 @chdir(i8*) #1

declare dso_local i8* @short2str(i8*) #1

declare dso_local i32 @cleanup_until(i8*) #1

declare dso_local i8* @dgoto(i8*) #1

declare dso_local i32 @cleanup_ignore(i8*) #1

declare dso_local i32 @stderror(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @prefix(i32, i8*) #1

declare dso_local %struct.varent* @adrof(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @Strlen(i8*) #1

declare dso_local i32 @Strbuf_append(%struct.Strbuf*, i8*) #1

declare dso_local i32 @Strbuf_append1(%struct.Strbuf*, i8 signext) #1

declare dso_local i32 @Strbuf_terminate(%struct.Strbuf*) #1

declare dso_local i8* @varval(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
