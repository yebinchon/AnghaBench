; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/rsh/extr_rsh.c_doit_broken.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/rsh/extr_rsh.c_doit_broken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, %struct.addrinfo*, i32 }

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"malloc: out of memory\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-K\00", align 1
@PATH_RSH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"execv(%s)\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@send_broken_auth = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i32, %struct.addrinfo*, i8*, i8*, i32, i32, i8*, i64)* @doit_broken to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @doit_broken(i32 %0, i8** %1, i32 %2, %struct.addrinfo* %3, i8* %4, i8* %5, i32 %6, i32 %7, i8* %8, i64 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.addrinfo*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.addrinfo*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8**, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i32 %0, i32* %12, align 4
  store i8** %1, i8*** %13, align 8
  store i32 %2, i32* %14, align 4
  store %struct.addrinfo* %3, %struct.addrinfo** %15, align 8
  store i8* %4, i8** %16, align 8
  store i8* %5, i8** %17, align 8
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i8* %8, i8** %20, align 8
  store i64 %9, i64* %21, align 8
  %30 = load i32, i32* %18, align 4
  %31 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %32 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %35 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @connect(i32 %30, i32 %33, i32 %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %178

39:                                               ; preds = %10
  %40 = load i32, i32* @errno, align 4
  store i32 %40, i32* %23, align 4
  %41 = load i32, i32* %18, align 4
  %42 = call i32 @close(i32 %41)
  %43 = load i32, i32* %19, align 4
  %44 = call i32 @close(i32 %43)
  %45 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %46 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %45, i32 0, i32 1
  %47 = load %struct.addrinfo*, %struct.addrinfo** %46, align 8
  store %struct.addrinfo* %47, %struct.addrinfo** %22, align 8
  br label %48

48:                                               ; preds = %166, %39
  %49 = load %struct.addrinfo*, %struct.addrinfo** %22, align 8
  %50 = icmp ne %struct.addrinfo* %49, null
  br i1 %50, label %51, label %170

51:                                               ; preds = %48
  %52 = load %struct.addrinfo*, %struct.addrinfo** %22, align 8
  %53 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i8* @print_addr(i32 %54)
  store i8* %55, i8** %25, align 8
  %56 = load i8*, i8** %25, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %166

59:                                               ; preds = %51
  %60 = call i64 (...) @fork()
  store i64 %60, i64* %24, align 8
  %61 = load i64, i64* %24, align 8
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %165

65:                                               ; preds = %59
  %66 = load i64, i64* %24, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %146

68:                                               ; preds = %65
  store i32 0, i32* %27, align 4
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, 2
  %71 = sext i32 %70 to i64
  %72 = mul i64 %71, 8
  %73 = trunc i64 %72 to i32
  %74 = call i8** @malloc(i32 %73)
  store i8** %74, i8*** %26, align 8
  %75 = load i8**, i8*** %26, align 8
  %76 = icmp eq i8** %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %68
  %78 = call i32 @errx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %68
  %80 = load i8**, i8*** %13, align 8
  %81 = load i32, i32* %27, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %80, i64 %82
  %84 = load i8*, i8** %83, align 8
  %85 = load i8**, i8*** %26, align 8
  %86 = load i32, i32* %27, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8*, i8** %85, i64 %87
  store i8* %84, i8** %88, align 8
  %89 = load i32, i32* %27, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %27, align 4
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* %27, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %79
  %95 = load i8*, i8** %25, align 8
  %96 = load i8**, i8*** %26, align 8
  %97 = load i32, i32* %27, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %27, align 4
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i8*, i8** %96, i64 %99
  store i8* %95, i8** %100, align 8
  br label %101

101:                                              ; preds = %94, %79
  %102 = load i8**, i8*** %26, align 8
  %103 = load i32, i32* %27, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %27, align 4
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i8*, i8** %102, i64 %105
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %106, align 8
  br label %107

107:                                              ; preds = %122, %101
  %108 = load i32, i32* %27, align 4
  %109 = load i32, i32* %12, align 4
  %110 = icmp sle i32 %108, %109
  br i1 %110, label %111, label %125

111:                                              ; preds = %107
  %112 = load i8**, i8*** %13, align 8
  %113 = load i32, i32* %27, align 4
  %114 = sub nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8*, i8** %112, i64 %115
  %117 = load i8*, i8** %116, align 8
  %118 = load i8**, i8*** %26, align 8
  %119 = load i32, i32* %27, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8*, i8** %118, i64 %120
  store i8* %117, i8** %121, align 8
  br label %122

122:                                              ; preds = %111
  %123 = load i32, i32* %27, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %27, align 4
  br label %107

125:                                              ; preds = %107
  %126 = load i32, i32* %14, align 4
  %127 = icmp sgt i32 %126, 1
  br i1 %127, label %128, label %135

128:                                              ; preds = %125
  %129 = load i8*, i8** %25, align 8
  %130 = load i8**, i8*** %26, align 8
  %131 = load i32, i32* %14, align 4
  %132 = add nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8*, i8** %130, i64 %133
  store i8* %129, i8** %134, align 8
  br label %135

135:                                              ; preds = %128, %125
  %136 = load i8**, i8*** %26, align 8
  %137 = load i32, i32* %12, align 4
  %138 = add nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8*, i8** %136, i64 %139
  store i8* null, i8** %140, align 8
  %141 = load i32, i32* @PATH_RSH, align 4
  %142 = load i8**, i8*** %26, align 8
  %143 = call i32 @execv(i32 %141, i8** %142)
  %144 = load i32, i32* @PATH_RSH, align 4
  %145 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %144)
  br label %164

146:                                              ; preds = %65
  %147 = load i8*, i8** %25, align 8
  %148 = call i32 @free(i8* %147)
  br label %149

149:                                              ; preds = %153, %146
  %150 = load i64, i64* %24, align 8
  %151 = call i64 @waitpid(i64 %150, i32* %28, i32 0)
  %152 = icmp slt i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %149
  br label %149

154:                                              ; preds = %149
  %155 = load i32, i32* %28, align 4
  %156 = call i64 @WIFEXITED(i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %154
  %159 = load i32, i32* %28, align 4
  %160 = call i64 @WEXITSTATUS(i32 %159)
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %158
  store i32 0, i32* %11, align 4
  br label %193

163:                                              ; preds = %158, %154
  br label %164

164:                                              ; preds = %163, %135
  br label %165

165:                                              ; preds = %164, %63
  br label %166

166:                                              ; preds = %165, %58
  %167 = load %struct.addrinfo*, %struct.addrinfo** %22, align 8
  %168 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %167, i32 0, i32 1
  %169 = load %struct.addrinfo*, %struct.addrinfo** %168, align 8
  store %struct.addrinfo* %169, %struct.addrinfo** %22, align 8
  br label %48

170:                                              ; preds = %48
  %171 = load i32, i32* %23, align 4
  store i32 %171, i32* @errno, align 4
  %172 = load i8**, i8*** %13, align 8
  %173 = load i32, i32* %14, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8*, i8** %172, i64 %174
  %176 = load i8*, i8** %175, align 8
  %177 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %176)
  store i32 1, i32* %11, align 4
  br label %193

178:                                              ; preds = %10
  %179 = load i32, i32* %18, align 4
  %180 = load i32, i32* %19, align 4
  %181 = load i8**, i8*** %13, align 8
  %182 = load i32, i32* %14, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8*, i8** %181, i64 %183
  %185 = load i8*, i8** %184, align 8
  %186 = load i8*, i8** %17, align 8
  %187 = load i8*, i8** %16, align 8
  %188 = load i8*, i8** %20, align 8
  %189 = load i64, i64* %21, align 8
  %190 = load i32, i32* @send_broken_auth, align 4
  %191 = call i32 @proto(i32 %179, i32 %180, i8* %185, i8* %186, i8* %187, i8* %188, i64 %189, i32 %190)
  store i32 %191, i32* %29, align 4
  %192 = load i32, i32* %29, align 4
  store i32 %192, i32* %11, align 4
  br label %193

193:                                              ; preds = %178, %170, %162
  %194 = load i32, i32* %11, align 4
  ret i32 %194
}

declare dso_local i64 @connect(i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i8* @print_addr(i32) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i8** @malloc(i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @execv(i32, i8**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @waitpid(i64, i32*, i32) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i64 @WEXITSTATUS(i32) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32 @proto(i32, i32, i8*, i8*, i8*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
