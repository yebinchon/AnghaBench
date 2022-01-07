; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/ftpd/extr_ftpd.c_checkuser.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/ftpd/extr_ftpd.c_checkuser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.group = type { i64, i8** }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Ran out of memory.\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@pw = common dso_local global %struct.TYPE_2__* null, align 8
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i8**, i32*)* @checkuser to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checkuser(i8* %0, i8* %1, i32 %2, i8** %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.group*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %12, align 4
  %19 = load i32*, i32** %10, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32*, i32** %10, align 8
  store i32 0, i32* %22, align 4
  br label %23

23:                                               ; preds = %21, %5
  %24 = load i8*, i8** %6, align 8
  %25 = call i32* @fopen(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %25, i32** %11, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %191

27:                                               ; preds = %23
  br label %28

28:                                               ; preds = %187, %43, %27
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = load i32*, i32** %11, align 8
  %33 = call i8* @fgetln(i32* %32, i64* %13)
  store i8* %33, i8** %14, align 8
  %34 = icmp ne i8* %33, null
  br label %35

35:                                               ; preds = %31, %28
  %36 = phi i1 [ false, %28 ], [ %34, %31 ]
  br i1 %36, label %37, label %188

37:                                               ; preds = %35
  %38 = load i8*, i8** %14, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 35
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %28

44:                                               ; preds = %37
  %45 = load i8*, i8** %14, align 8
  %46 = load i64, i64* %13, align 8
  %47 = sub i64 %46, 1
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 10
  br i1 %51, label %52, label %57

52:                                               ; preds = %44
  %53 = load i8*, i8** %14, align 8
  %54 = load i64, i64* %13, align 8
  %55 = sub i64 %54, 1
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  store i8 0, i8* %56, align 1
  store i8* null, i8** %15, align 8
  br label %73

57:                                               ; preds = %44
  %58 = load i64, i64* %13, align 8
  %59 = add i64 %58, 1
  %60 = call i8* @malloc(i64 %59)
  store i8* %60, i8** %15, align 8
  %61 = icmp eq i8* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = call i32 @fatalerror(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %57
  %65 = load i8*, i8** %15, align 8
  %66 = load i8*, i8** %14, align 8
  %67 = load i64, i64* %13, align 8
  %68 = call i32 @memcpy(i8* %65, i8* %66, i64 %67)
  %69 = load i8*, i8** %15, align 8
  %70 = load i64, i64* %13, align 8
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  store i8 0, i8* %71, align 1
  %72 = load i8*, i8** %15, align 8
  store i8* %72, i8** %14, align 8
  br label %73

73:                                               ; preds = %64, %52
  %74 = load i8*, i8** %14, align 8
  %75 = call i8* @strtok(i8* %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i8* %75, i8** %16, align 8
  %76 = load i8*, i8** %16, align 8
  %77 = icmp eq i8* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %181

79:                                               ; preds = %73
  %80 = load i8*, i8** %16, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 0
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 64
  br i1 %84, label %85, label %140

85:                                               ; preds = %79
  store i32 0, i32* %17, align 4
  %86 = load i8*, i8** %16, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 1
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  store i32 1, i32* %12, align 4
  br label %139

92:                                               ; preds = %85
  %93 = load i8*, i8** %16, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  %95 = call %struct.group* @getgrnam(i8* %94)
  store %struct.group* %95, %struct.group** %18, align 8
  %96 = icmp eq %struct.group* %95, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  br label %181

98:                                               ; preds = %92
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %98
  %102 = load %struct.group*, %struct.group** %18, align 8
  %103 = getelementptr inbounds %struct.group, %struct.group* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pw, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 %104, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %101
  store i32 1, i32* %12, align 4
  br label %110

110:                                              ; preds = %109, %101, %98
  br label %111

111:                                              ; preds = %125, %110
  %112 = load i32, i32* %12, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %123, label %114

114:                                              ; preds = %111
  %115 = load %struct.group*, %struct.group** %18, align 8
  %116 = getelementptr inbounds %struct.group, %struct.group* %115, i32 0, i32 1
  %117 = load i8**, i8*** %116, align 8
  %118 = load i32, i32* %17, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8*, i8** %117, i64 %119
  %121 = load i8*, i8** %120, align 8
  %122 = icmp ne i8* %121, null
  br label %123

123:                                              ; preds = %114, %111
  %124 = phi i1 [ false, %111 ], [ %122, %114 ]
  br i1 %124, label %125, label %138

125:                                              ; preds = %123
  %126 = load i8*, i8** %7, align 8
  %127 = load %struct.group*, %struct.group** %18, align 8
  %128 = getelementptr inbounds %struct.group, %struct.group* %127, i32 0, i32 1
  %129 = load i8**, i8*** %128, align 8
  %130 = load i32, i32* %17, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %17, align 4
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds i8*, i8** %129, i64 %132
  %134 = load i8*, i8** %133, align 8
  %135 = call i64 @strcmp(i8* %126, i8* %134)
  %136 = icmp eq i64 %135, 0
  %137 = zext i1 %136 to i32
  store i32 %137, i32* %12, align 4
  br label %111

138:                                              ; preds = %123
  br label %139

139:                                              ; preds = %138, %91
  br label %146

140:                                              ; preds = %79
  %141 = load i8*, i8** %16, align 8
  %142 = load i8*, i8** %7, align 8
  %143 = call i64 @strcmp(i8* %141, i8* %142)
  %144 = icmp eq i64 %143, 0
  %145 = zext i1 %144 to i32
  store i32 %145, i32* %12, align 4
  br label %146

146:                                              ; preds = %140, %139
  %147 = load i32, i32* %12, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %180

149:                                              ; preds = %146
  %150 = load i8**, i8*** %9, align 8
  %151 = icmp ne i8** %150, null
  br i1 %151, label %152, label %180

152:                                              ; preds = %149
  %153 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  store i8* %153, i8** %16, align 8
  %154 = icmp ne i8* %153, null
  br i1 %154, label %155, label %161

155:                                              ; preds = %152
  %156 = load i8*, i8** %16, align 8
  %157 = call i32 @strspn(i8* %156, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %158 = load i8*, i8** %16, align 8
  %159 = sext i32 %157 to i64
  %160 = getelementptr inbounds i8, i8* %158, i64 %159
  store i8* %160, i8** %16, align 8
  br label %161

161:                                              ; preds = %155, %152
  %162 = load i8*, i8** %16, align 8
  %163 = icmp ne i8* %162, null
  br i1 %163, label %164, label %177

164:                                              ; preds = %161
  %165 = load i8*, i8** %16, align 8
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %177

169:                                              ; preds = %164
  %170 = load i8*, i8** %16, align 8
  %171 = call i8* @strdup(i8* %170)
  %172 = load i8**, i8*** %9, align 8
  store i8* %171, i8** %172, align 8
  %173 = icmp eq i8* %171, null
  br i1 %173, label %174, label %176

174:                                              ; preds = %169
  %175 = call i32 @fatalerror(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %176

176:                                              ; preds = %174, %169
  br label %179

177:                                              ; preds = %164, %161
  %178 = load i8**, i8*** %9, align 8
  store i8* null, i8** %178, align 8
  br label %179

179:                                              ; preds = %177, %176
  br label %180

180:                                              ; preds = %179, %149, %146
  br label %181

181:                                              ; preds = %180, %97, %78
  %182 = load i8*, i8** %15, align 8
  %183 = icmp ne i8* %182, null
  br i1 %183, label %184, label %187

184:                                              ; preds = %181
  %185 = load i8*, i8** %15, align 8
  %186 = call i32 @free(i8* %185)
  br label %187

187:                                              ; preds = %184, %181
  br label %28

188:                                              ; preds = %35
  %189 = load i32*, i32** %11, align 8
  %190 = call i32 @fclose(i32* %189)
  br label %198

191:                                              ; preds = %23
  %192 = load i32*, i32** %10, align 8
  %193 = icmp ne i32* %192, null
  br i1 %193, label %194, label %197

194:                                              ; preds = %191
  %195 = load i32, i32* @errno, align 4
  %196 = load i32*, i32** %10, align 8
  store i32 %195, i32* %196, align 4
  br label %197

197:                                              ; preds = %194, %191
  br label %198

198:                                              ; preds = %197, %188
  %199 = load i32, i32* %12, align 4
  ret i32 %199
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i8* @fgetln(i32*, i64*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @fatalerror(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local %struct.group* @getgrnam(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @strspn(i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
