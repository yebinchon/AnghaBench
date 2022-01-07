; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.dir.c_dopushd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.dir.c_dopushd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.directory = type { i64*, %struct.directory*, %struct.directory*, i64 }
%struct.command = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"plvn\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c" [-|<dir>|+<n>]\00", align 1
@printd = common dso_local global i32 0, align 4
@DIR_OLD = common dso_local global i32 0, align 4
@STRowd = common dso_local global i32 0, align 4
@STRpushdtohome = common dso_local global i32 0, align 4
@STRhome = common dso_local global i32 0, align 4
@STRNULL = common dso_local global i64* null, align 8
@ERR_NAME = common dso_local global i32 0, align 4
@ERR_NOHOMEDIR = common dso_local global i32 0, align 4
@ERR_CANTCHANGE = common dso_local global i32 0, align 4
@dcwd = common dso_local global %struct.directory* null, align 8
@dhead = common dso_local global %struct.directory zeroinitializer, align 8
@ERR_NODIR = common dso_local global i32 0, align 4
@ERR_SYSTEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ERR_TOOMANY = common dso_local global i32 0, align 4
@STRdextract = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dopushd(i64** %0, %struct.command* %1) #0 {
  %3 = alloca i64**, align 8
  %4 = alloca %struct.command*, align 8
  %5 = alloca %struct.directory*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64*, align 8
  store i64** %0, i64*** %3, align 8
  store %struct.command* %1, %struct.command** %4, align 8
  %11 = call i32 @skipargs(i64*** %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32 %11, i32* %7, align 4
  %12 = load %struct.command*, %struct.command** %4, align 8
  %13 = call i32 @USE(%struct.command* %12)
  store i32 1, i32* @printd, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @DIR_OLD, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @STRowd, align 4
  %20 = call i64* @varval(i32 %19)
  br label %24

21:                                               ; preds = %2
  %22 = load i64**, i64*** %3, align 8
  %23 = load i64*, i64** %22, align 8
  br label %24

24:                                               ; preds = %21, %18
  %25 = phi i64* [ %20, %18 ], [ %23, %21 ]
  store i64* %25, i64** %6, align 8
  %26 = load i64*, i64** %6, align 8
  %27 = icmp eq i64* %26, null
  br i1 %27, label %28, label %148

28:                                               ; preds = %24
  %29 = load i32, i32* @STRpushdtohome, align 4
  %30 = call i64 @adrof(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %87

32:                                               ; preds = %28
  %33 = load i32, i32* @STRhome, align 4
  %34 = call i64* @varval(i32 %33)
  store i64* %34, i64** %6, align 8
  %35 = load i64*, i64** @STRNULL, align 8
  %36 = icmp eq i64* %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = load i64*, i64** %6, align 8
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %37, %32
  %42 = load i32, i32* @ERR_NAME, align 4
  %43 = load i32, i32* @ERR_NOHOMEDIR, align 4
  %44 = or i32 %42, %43
  %45 = call i32 (i32, ...) @stderror(i32 %44)
  br label %46

46:                                               ; preds = %41, %37
  %47 = load i64*, i64** %6, align 8
  %48 = call i8* @short2str(i64* %47)
  %49 = call i64 @chdir(i8* %48)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load i32, i32* @ERR_NAME, align 4
  %53 = load i32, i32* @ERR_CANTCHANGE, align 4
  %54 = or i32 %52, %53
  %55 = call i32 (i32, ...) @stderror(i32 %54)
  br label %56

56:                                               ; preds = %51, %46
  %57 = load i64*, i64** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @DIR_OLD, align 4
  %60 = and i32 %58, %59
  %61 = call i64* @dfollow(i64* %57, i32 %60)
  store i64* %61, i64** %6, align 8
  %62 = icmp eq i64* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %225

64:                                               ; preds = %56
  %65 = call %struct.directory* @xcalloc(i32 32, i32 1)
  store %struct.directory* %65, %struct.directory** %5, align 8
  %66 = load i64*, i64** %6, align 8
  %67 = load %struct.directory*, %struct.directory** %5, align 8
  %68 = getelementptr inbounds %struct.directory, %struct.directory* %67, i32 0, i32 0
  store i64* %66, i64** %68, align 8
  %69 = load %struct.directory*, %struct.directory** %5, align 8
  %70 = getelementptr inbounds %struct.directory, %struct.directory* %69, i32 0, i32 3
  store i64 0, i64* %70, align 8
  %71 = load %struct.directory*, %struct.directory** @dcwd, align 8
  %72 = load %struct.directory*, %struct.directory** %5, align 8
  %73 = getelementptr inbounds %struct.directory, %struct.directory* %72, i32 0, i32 1
  store %struct.directory* %71, %struct.directory** %73, align 8
  %74 = load %struct.directory*, %struct.directory** @dcwd, align 8
  %75 = getelementptr inbounds %struct.directory, %struct.directory* %74, i32 0, i32 2
  %76 = load %struct.directory*, %struct.directory** %75, align 8
  %77 = load %struct.directory*, %struct.directory** %5, align 8
  %78 = getelementptr inbounds %struct.directory, %struct.directory* %77, i32 0, i32 2
  store %struct.directory* %76, %struct.directory** %78, align 8
  %79 = load %struct.directory*, %struct.directory** %5, align 8
  %80 = load %struct.directory*, %struct.directory** @dcwd, align 8
  %81 = getelementptr inbounds %struct.directory, %struct.directory* %80, i32 0, i32 2
  store %struct.directory* %79, %struct.directory** %81, align 8
  %82 = load %struct.directory*, %struct.directory** %5, align 8
  %83 = load %struct.directory*, %struct.directory** %5, align 8
  %84 = getelementptr inbounds %struct.directory, %struct.directory* %83, i32 0, i32 2
  %85 = load %struct.directory*, %struct.directory** %84, align 8
  %86 = getelementptr inbounds %struct.directory, %struct.directory* %85, i32 0, i32 1
  store %struct.directory* %82, %struct.directory** %86, align 8
  br label %147

87:                                               ; preds = %28
  %88 = load %struct.directory*, %struct.directory** @dcwd, align 8
  %89 = getelementptr inbounds %struct.directory, %struct.directory* %88, i32 0, i32 1
  %90 = load %struct.directory*, %struct.directory** %89, align 8
  store %struct.directory* %90, %struct.directory** %5, align 8
  %91 = icmp eq %struct.directory* %90, @dhead
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = load %struct.directory*, %struct.directory** getelementptr inbounds (%struct.directory, %struct.directory* @dhead, i32 0, i32 1), align 8
  store %struct.directory* %93, %struct.directory** %5, align 8
  br label %94

94:                                               ; preds = %92, %87
  %95 = load %struct.directory*, %struct.directory** %5, align 8
  %96 = load %struct.directory*, %struct.directory** @dcwd, align 8
  %97 = icmp eq %struct.directory* %95, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  %99 = load i32, i32* @ERR_NAME, align 4
  %100 = load i32, i32* @ERR_NODIR, align 4
  %101 = or i32 %99, %100
  %102 = call i32 (i32, ...) @stderror(i32 %101)
  br label %103

103:                                              ; preds = %98, %94
  %104 = load %struct.directory*, %struct.directory** %5, align 8
  %105 = getelementptr inbounds %struct.directory, %struct.directory* %104, i32 0, i32 0
  %106 = load i64*, i64** %105, align 8
  %107 = call i8* @short2str(i64* %106)
  store i8* %107, i8** %8, align 8
  %108 = call i64 @chdir(i8* %107)
  %109 = icmp slt i64 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %103
  %111 = load i32, i32* @ERR_SYSTEM, align 4
  %112 = load i8*, i8** %8, align 8
  %113 = load i32, i32* @errno, align 4
  %114 = call i32 @strerror(i32 %113)
  %115 = call i32 (i32, ...) @stderror(i32 %111, i8* %112, i32 %114)
  br label %116

116:                                              ; preds = %110, %103
  %117 = load %struct.directory*, %struct.directory** %5, align 8
  %118 = getelementptr inbounds %struct.directory, %struct.directory* %117, i32 0, i32 2
  %119 = load %struct.directory*, %struct.directory** %118, align 8
  %120 = load %struct.directory*, %struct.directory** %5, align 8
  %121 = getelementptr inbounds %struct.directory, %struct.directory* %120, i32 0, i32 1
  %122 = load %struct.directory*, %struct.directory** %121, align 8
  %123 = getelementptr inbounds %struct.directory, %struct.directory* %122, i32 0, i32 2
  store %struct.directory* %119, %struct.directory** %123, align 8
  %124 = load %struct.directory*, %struct.directory** %5, align 8
  %125 = getelementptr inbounds %struct.directory, %struct.directory* %124, i32 0, i32 1
  %126 = load %struct.directory*, %struct.directory** %125, align 8
  %127 = load %struct.directory*, %struct.directory** %5, align 8
  %128 = getelementptr inbounds %struct.directory, %struct.directory* %127, i32 0, i32 2
  %129 = load %struct.directory*, %struct.directory** %128, align 8
  %130 = getelementptr inbounds %struct.directory, %struct.directory* %129, i32 0, i32 1
  store %struct.directory* %126, %struct.directory** %130, align 8
  %131 = load %struct.directory*, %struct.directory** @dcwd, align 8
  %132 = getelementptr inbounds %struct.directory, %struct.directory* %131, i32 0, i32 2
  %133 = load %struct.directory*, %struct.directory** %132, align 8
  %134 = load %struct.directory*, %struct.directory** %5, align 8
  %135 = getelementptr inbounds %struct.directory, %struct.directory* %134, i32 0, i32 2
  store %struct.directory* %133, %struct.directory** %135, align 8
  %136 = load %struct.directory*, %struct.directory** @dcwd, align 8
  %137 = load %struct.directory*, %struct.directory** %5, align 8
  %138 = getelementptr inbounds %struct.directory, %struct.directory* %137, i32 0, i32 1
  store %struct.directory* %136, %struct.directory** %138, align 8
  %139 = load %struct.directory*, %struct.directory** %5, align 8
  %140 = load %struct.directory*, %struct.directory** @dcwd, align 8
  %141 = getelementptr inbounds %struct.directory, %struct.directory* %140, i32 0, i32 2
  %142 = load %struct.directory*, %struct.directory** %141, align 8
  %143 = getelementptr inbounds %struct.directory, %struct.directory* %142, i32 0, i32 1
  store %struct.directory* %139, %struct.directory** %143, align 8
  %144 = load %struct.directory*, %struct.directory** %5, align 8
  %145 = load %struct.directory*, %struct.directory** @dcwd, align 8
  %146 = getelementptr inbounds %struct.directory, %struct.directory* %145, i32 0, i32 2
  store %struct.directory* %144, %struct.directory** %146, align 8
  br label %147

147:                                              ; preds = %116, %64
  br label %221

148:                                              ; preds = %24
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* @DIR_OLD, align 4
  %151 = and i32 %149, %150
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %163

153:                                              ; preds = %148
  %154 = load i64**, i64*** %3, align 8
  %155 = getelementptr inbounds i64*, i64** %154, i64 1
  %156 = load i64*, i64** %155, align 8
  %157 = icmp ne i64* %156, null
  br i1 %157, label %158, label %163

158:                                              ; preds = %153
  %159 = load i32, i32* @ERR_NAME, align 4
  %160 = load i32, i32* @ERR_TOOMANY, align 4
  %161 = or i32 %159, %160
  %162 = call i32 (i32, ...) @stderror(i32 %161)
  br label %225

163:                                              ; preds = %153, %148
  %164 = load i64*, i64** %6, align 8
  %165 = call %struct.directory* @dfind(i64* %164)
  store %struct.directory* %165, %struct.directory** %5, align 8
  %166 = icmp ne %struct.directory* %165, null
  br i1 %166, label %167, label %188

167:                                              ; preds = %163
  %168 = load %struct.directory*, %struct.directory** %5, align 8
  %169 = getelementptr inbounds %struct.directory, %struct.directory* %168, i32 0, i32 0
  %170 = load i64*, i64** %169, align 8
  %171 = call i8* @short2str(i64* %170)
  store i8* %171, i8** %9, align 8
  %172 = call i64 @chdir(i8* %171)
  %173 = icmp slt i64 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %167
  %175 = load i32, i32* @ERR_SYSTEM, align 4
  %176 = load i8*, i8** %9, align 8
  %177 = load i32, i32* @errno, align 4
  %178 = call i32 @strerror(i32 %177)
  %179 = call i32 (i32, ...) @stderror(i32 %175, i8* %176, i32 %178)
  br label %180

180:                                              ; preds = %174, %167
  %181 = load i32, i32* @STRdextract, align 4
  %182 = call i64 @adrof(i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %180
  %185 = load %struct.directory*, %struct.directory** %5, align 8
  %186 = call i32 @dextract(%struct.directory* %185)
  br label %187

187:                                              ; preds = %184, %180
  br label %219

188:                                              ; preds = %163
  %189 = load i64*, i64** %6, align 8
  %190 = load i32, i32* %7, align 4
  %191 = load i32, i32* @DIR_OLD, align 4
  %192 = and i32 %190, %191
  %193 = call i64* @dfollow(i64* %189, i32 %192)
  store i64* %193, i64** %10, align 8
  %194 = icmp eq i64* %193, null
  br i1 %194, label %195, label %196

195:                                              ; preds = %188
  br label %225

196:                                              ; preds = %188
  %197 = call %struct.directory* @xcalloc(i32 32, i32 1)
  store %struct.directory* %197, %struct.directory** %5, align 8
  %198 = load i64*, i64** %10, align 8
  %199 = load %struct.directory*, %struct.directory** %5, align 8
  %200 = getelementptr inbounds %struct.directory, %struct.directory* %199, i32 0, i32 0
  store i64* %198, i64** %200, align 8
  %201 = load %struct.directory*, %struct.directory** %5, align 8
  %202 = getelementptr inbounds %struct.directory, %struct.directory* %201, i32 0, i32 3
  store i64 0, i64* %202, align 8
  %203 = load %struct.directory*, %struct.directory** @dcwd, align 8
  %204 = load %struct.directory*, %struct.directory** %5, align 8
  %205 = getelementptr inbounds %struct.directory, %struct.directory* %204, i32 0, i32 1
  store %struct.directory* %203, %struct.directory** %205, align 8
  %206 = load %struct.directory*, %struct.directory** @dcwd, align 8
  %207 = getelementptr inbounds %struct.directory, %struct.directory* %206, i32 0, i32 2
  %208 = load %struct.directory*, %struct.directory** %207, align 8
  %209 = load %struct.directory*, %struct.directory** %5, align 8
  %210 = getelementptr inbounds %struct.directory, %struct.directory* %209, i32 0, i32 2
  store %struct.directory* %208, %struct.directory** %210, align 8
  %211 = load %struct.directory*, %struct.directory** %5, align 8
  %212 = load %struct.directory*, %struct.directory** @dcwd, align 8
  %213 = getelementptr inbounds %struct.directory, %struct.directory* %212, i32 0, i32 2
  store %struct.directory* %211, %struct.directory** %213, align 8
  %214 = load %struct.directory*, %struct.directory** %5, align 8
  %215 = load %struct.directory*, %struct.directory** %5, align 8
  %216 = getelementptr inbounds %struct.directory, %struct.directory* %215, i32 0, i32 2
  %217 = load %struct.directory*, %struct.directory** %216, align 8
  %218 = getelementptr inbounds %struct.directory, %struct.directory* %217, i32 0, i32 1
  store %struct.directory* %214, %struct.directory** %218, align 8
  br label %219

219:                                              ; preds = %196, %187
  br label %220

220:                                              ; preds = %219
  br label %221

221:                                              ; preds = %220, %147
  %222 = load %struct.directory*, %struct.directory** %5, align 8
  %223 = load i32, i32* %7, align 4
  %224 = call i32 @dnewcwd(%struct.directory* %222, i32 %223)
  br label %225

225:                                              ; preds = %221, %195, %158, %63
  ret void
}

declare dso_local i32 @skipargs(i64***, i8*, i8*) #1

declare dso_local i32 @USE(%struct.command*) #1

declare dso_local i64* @varval(i32) #1

declare dso_local i64 @adrof(i32) #1

declare dso_local i32 @stderror(i32, ...) #1

declare dso_local i64 @chdir(i8*) #1

declare dso_local i8* @short2str(i64*) #1

declare dso_local i64* @dfollow(i64*, i32) #1

declare dso_local %struct.directory* @xcalloc(i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local %struct.directory* @dfind(i64*) #1

declare dso_local i32 @dextract(%struct.directory*) #1

declare dso_local i32 @dnewcwd(%struct.directory*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
