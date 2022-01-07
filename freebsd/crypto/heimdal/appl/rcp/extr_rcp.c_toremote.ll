; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/rcp/extr_rcp.c_toremote.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/rcp/extr_rcp.c_toremote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@pwd = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"%s%s %s -l %s -n %s %s '%s%s%s:%s'\00", align 1
@_PATH_RSH = common dso_local global i32 0, align 4
@eflag = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c" -e\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@cmd = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"exec %s%s %s -n %s %s '%s%s%s:%s'\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@remin = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"%s -t %s\00", align 1
@remout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @toremote(i8* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %4, align 8
  store i8 0, i8* %15, align 1
  %17 = load i8*, i8** %4, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %22

22:                                               ; preds = %21, %3
  %23 = load i8**, i8*** %6, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %23, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = call i8* @strchr(i8* %28, i8 signext 64)
  store i8* %29, i8** %12, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %53

31:                                               ; preds = %22
  %32 = load i8*, i8** %12, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %12, align 8
  store i8 0, i8* %32, align 1
  %34 = load i8**, i8*** %6, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %34, i64 %37
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %13, align 8
  %40 = load i8*, i8** %13, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %31
  store i8* null, i8** %13, align 8
  br label %52

45:                                               ; preds = %31
  %46 = load i8*, i8** %13, align 8
  %47 = call i32 @okname(i8* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = call i32 @exit(i32 1) #3
  unreachable

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %51, %44
  br label %60

53:                                               ; preds = %22
  %54 = load i8**, i8*** %6, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %54, i64 %57
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %12, align 8
  store i8* null, i8** %13, align 8
  br label %60

60:                                               ; preds = %53, %52
  %61 = load i8*, i8** %12, align 8
  %62 = call i8* @unbracket(i8* %61)
  store i8* %62, i8** %12, align 8
  store i32 0, i32* %7, align 4
  br label %63

63:                                               ; preds = %215, %60
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %5, align 4
  %66 = sub nsw i32 %65, 1
  %67 = icmp slt i32 %64, %66
  br i1 %67, label %68, label %218

68:                                               ; preds = %63
  %69 = load i8**, i8*** %6, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %69, i64 %71
  %73 = load i8*, i8** %72, align 8
  %74 = call i8* @colon(i8* %73)
  store i8* %74, i8** %10, align 8
  %75 = load i8*, i8** %10, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %181

77:                                               ; preds = %68
  %78 = load i8*, i8** %10, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %10, align 8
  store i8 0, i8* %78, align 1
  %80 = load i8*, i8** %10, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %85

85:                                               ; preds = %84, %77
  %86 = load i8**, i8*** %6, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %86, i64 %88
  %90 = load i8*, i8** %89, align 8
  %91 = call i8* @strchr(i8* %90, i8 signext 64)
  store i8* %91, i8** %9, align 8
  %92 = load i8*, i8** %9, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %142

94:                                               ; preds = %85
  %95 = load i8*, i8** %9, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %9, align 8
  store i8 0, i8* %95, align 1
  %97 = load i8*, i8** %9, align 8
  %98 = call i8* @unbracket(i8* %97)
  store i8* %98, i8** %9, align 8
  %99 = load i8**, i8*** %6, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8*, i8** %99, i64 %101
  %103 = load i8*, i8** %102, align 8
  store i8* %103, i8** %11, align 8
  %104 = load i8*, i8** %11, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %94
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pwd, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  store i8* %111, i8** %11, align 8
  br label %118

112:                                              ; preds = %94
  %113 = load i8*, i8** %11, align 8
  %114 = call i32 @okname(i8* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %112
  br label %215

117:                                              ; preds = %112
  br label %118

118:                                              ; preds = %117, %108
  %119 = load i32, i32* @_PATH_RSH, align 4
  %120 = load i64, i64* @eflag, align 8
  %121 = icmp ne i64 %120, 0
  %122 = zext i1 %121 to i64
  %123 = select i1 %121, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %124 = load i8*, i8** %9, align 8
  %125 = load i8*, i8** %11, align 8
  %126 = load i32, i32* @cmd, align 4
  %127 = load i8*, i8** %10, align 8
  %128 = load i8*, i8** %13, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %130, label %132

130:                                              ; preds = %118
  %131 = load i8*, i8** %13, align 8
  br label %133

132:                                              ; preds = %118
  br label %133

133:                                              ; preds = %132, %130
  %134 = phi i8* [ %131, %130 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %132 ]
  %135 = load i8*, i8** %13, align 8
  %136 = icmp ne i8* %135, null
  %137 = zext i1 %136 to i64
  %138 = select i1 %136, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %139 = load i8*, i8** %12, align 8
  %140 = load i8*, i8** %4, align 8
  %141 = call i32 (i8**, i8*, i32, i8*, ...) @asprintf(i8** %8, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %119, i8* %123, i8* %124, i8* %125, i32 %126, i8* %127, i8* %134, i8* %138, i8* %139, i8* %140)
  store i32 %141, i32* %14, align 4
  br label %171

142:                                              ; preds = %85
  %143 = load i8**, i8*** %6, align 8
  %144 = load i32, i32* %7, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8*, i8** %143, i64 %145
  %147 = load i8*, i8** %146, align 8
  %148 = call i8* @unbracket(i8* %147)
  store i8* %148, i8** %9, align 8
  %149 = load i32, i32* @_PATH_RSH, align 4
  %150 = load i64, i64* @eflag, align 8
  %151 = icmp ne i64 %150, 0
  %152 = zext i1 %151 to i64
  %153 = select i1 %151, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %154 = load i8*, i8** %9, align 8
  %155 = load i32, i32* @cmd, align 4
  %156 = load i8*, i8** %10, align 8
  %157 = load i8*, i8** %13, align 8
  %158 = icmp ne i8* %157, null
  br i1 %158, label %159, label %161

159:                                              ; preds = %142
  %160 = load i8*, i8** %13, align 8
  br label %162

161:                                              ; preds = %142
  br label %162

162:                                              ; preds = %161, %159
  %163 = phi i8* [ %160, %159 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %161 ]
  %164 = load i8*, i8** %13, align 8
  %165 = icmp ne i8* %164, null
  %166 = zext i1 %165 to i64
  %167 = select i1 %165, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %168 = load i8*, i8** %12, align 8
  %169 = load i8*, i8** %4, align 8
  %170 = call i32 (i8**, i8*, i32, i8*, ...) @asprintf(i8** %8, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %149, i8* %153, i8* %154, i32 %155, i8* %156, i8* %163, i8* %167, i8* %168, i8* %169)
  store i32 %170, i32* %14, align 4
  br label %171

171:                                              ; preds = %162, %133
  %172 = load i32, i32* %14, align 4
  %173 = icmp eq i32 %172, -1
  br i1 %173, label %174, label %176

174:                                              ; preds = %171
  %175 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  br label %176

176:                                              ; preds = %174, %171
  %177 = load i8*, i8** %8, align 8
  %178 = call i32 @susystem(i8* %177)
  %179 = load i8*, i8** %8, align 8
  %180 = call i32 @free(i8* %179)
  br label %214

181:                                              ; preds = %68
  %182 = load i32, i32* @remin, align 4
  %183 = icmp eq i32 %182, -1
  br i1 %183, label %184, label %208

184:                                              ; preds = %181
  %185 = load i32, i32* @cmd, align 4
  %186 = load i8*, i8** %4, align 8
  %187 = call i32 (i8**, i8*, i32, i8*, ...) @asprintf(i8** %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %185, i8* %186)
  %188 = icmp eq i32 %187, -1
  br i1 %188, label %189, label %191

189:                                              ; preds = %184
  %190 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  br label %191

191:                                              ; preds = %189, %184
  %192 = load i8*, i8** %12, align 8
  store i8* %192, i8** %9, align 8
  %193 = load i8*, i8** %9, align 8
  %194 = load i8*, i8** %13, align 8
  %195 = load i8*, i8** %8, align 8
  %196 = call i64 @do_cmd(i8* %193, i8* %194, i8* %195, i32* @remin, i32* @remout)
  %197 = icmp slt i64 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %191
  %199 = call i32 @exit(i32 1) #3
  unreachable

200:                                              ; preds = %191
  %201 = call i64 (...) @response()
  %202 = icmp slt i64 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %200
  %204 = call i32 @exit(i32 1) #3
  unreachable

205:                                              ; preds = %200
  %206 = load i8*, i8** %8, align 8
  %207 = call i32 @free(i8* %206)
  br label %208

208:                                              ; preds = %205, %181
  %209 = load i8**, i8*** %6, align 8
  %210 = load i32, i32* %7, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i8*, i8** %209, i64 %211
  %213 = call i32 @source(i32 1, i8** %212)
  br label %214

214:                                              ; preds = %208, %176
  br label %215

215:                                              ; preds = %214, %116
  %216 = load i32, i32* %7, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %7, align 4
  br label %63

218:                                              ; preds = %63
  ret void
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @okname(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i8* @unbracket(i8*) #1

declare dso_local i8* @colon(i8*) #1

declare dso_local i32 @asprintf(i8**, i8*, i32, i8*, ...) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @susystem(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @do_cmd(i8*, i8*, i8*, i32*, i32*) #1

declare dso_local i64 @response(...) #1

declare dso_local i32 @source(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
