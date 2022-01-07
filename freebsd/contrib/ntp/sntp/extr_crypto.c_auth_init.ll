; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/extr_crypto.c_auth_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/extr_crypto.c_auth_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32, i8*, i32, i8*, i64, %struct.key* }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@debug = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [56 x i8] c"sntp auth_init: Couldn't open key file %s for reading!\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"sntp auth_init: Key file %s is empty!\0A\00", align 1
@key_cnt = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"%d %15s %128s\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"%s: line %d: key %d, %s not supported - ignoring\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"auth_init: scanf %d items, skipping line %d.\00", align 1
@key_ptr = common dso_local global %struct.key* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @auth_init(i8* %0, %struct.key** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.key**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.key*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [200 x i8], align 16
  %11 = alloca [129 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca %struct.key*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.key** %1, %struct.key*** %5, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = call i32* @fopen(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %19, i32** %6, align 8
  store %struct.key* null, %struct.key** %7, align 8
  store i32 1, i32* %9, align 4
  %20 = call i32 (...) @INIT_SSL()
  %21 = load i32*, i32** %6, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load i64, i64* @debug, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  br label %29

29:                                               ; preds = %26, %23
  store i32 -1, i32* %3, align 4
  br label %197

30:                                               ; preds = %2
  %31 = load i32*, i32** %6, align 8
  %32 = call i64 @feof(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = load i64, i64* @debug, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %38)
  br label %40

40:                                               ; preds = %37, %34
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @fclose(i32* %41)
  store i32 -1, i32* %3, align 4
  br label %197

43:                                               ; preds = %30
  store i32 0, i32* @key_cnt, align 4
  br label %44

44:                                               ; preds = %188, %54, %43
  %45 = load i32*, i32** %6, align 8
  %46 = call i64 @feof(i32* %45)
  %47 = icmp ne i64 %46, 0
  %48 = xor i1 %47, true
  br i1 %48, label %49, label %191

49:                                               ; preds = %44
  store i32 0, i32* %14, align 4
  %50 = getelementptr inbounds [200 x i8], [200 x i8]* %10, i64 0, i64 0
  %51 = load i32*, i32** %6, align 8
  %52 = call i32* @fgets(i8* %50, i32 200, i32* %51)
  %53 = icmp eq i32* null, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %44

55:                                               ; preds = %49
  %56 = getelementptr inbounds [200 x i8], [200 x i8]* %10, i64 0, i64 199
  store i8 0, i8* %56, align 1
  %57 = getelementptr inbounds [200 x i8], [200 x i8]* %10, i64 0, i64 0
  %58 = call i8* @strchr(i8* %57, i8 signext 35)
  store i8* %58, i8** %12, align 8
  %59 = load i8*, i8** %12, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i8*, i8** %12, align 8
  store i8 0, i8* %62, align 1
  br label %63

63:                                               ; preds = %61, %55
  %64 = call %struct.key* @emalloc(i32 48)
  store %struct.key* %64, %struct.key** %13, align 8
  %65 = getelementptr inbounds [200 x i8], [200 x i8]* %10, i64 0, i64 0
  %66 = load %struct.key*, %struct.key** %13, align 8
  %67 = getelementptr inbounds %struct.key, %struct.key* %66, i32 0, i32 0
  %68 = load %struct.key*, %struct.key** %13, align 8
  %69 = getelementptr inbounds %struct.key, %struct.key* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds [129 x i8], [129 x i8]* %11, i64 0, i64 0
  %72 = call i32 @sscanf(i8* %65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32* %67, i8* %70, i8* %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp eq i32 %73, 3
  br i1 %74, label %75, label %159

75:                                               ; preds = %63
  %76 = getelementptr inbounds [129 x i8], [129 x i8]* %11, i64 0, i64 0
  %77 = call i32 @strlen(i8* %76)
  store i32 %77, i32* %15, align 4
  store i32 1, i32* %14, align 4
  %78 = load i32, i32* %15, align 4
  %79 = icmp sle i32 %78, 20
  br i1 %79, label %80, label %91

80:                                               ; preds = %75
  %81 = load i32, i32* %15, align 4
  %82 = load %struct.key*, %struct.key** %13, align 8
  %83 = getelementptr inbounds %struct.key, %struct.key* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  %84 = load %struct.key*, %struct.key** %13, align 8
  %85 = getelementptr inbounds %struct.key, %struct.key* %84, i32 0, i32 3
  %86 = load i8*, i8** %85, align 8
  %87 = getelementptr inbounds [129 x i8], [129 x i8]* %11, i64 0, i64 0
  %88 = load i32, i32* %15, align 4
  %89 = add nsw i32 %88, 1
  %90 = call i32 @memcpy(i8* %86, i8* %87, i32 %89)
  br label %137

91:                                               ; preds = %75
  %92 = load i32, i32* %15, align 4
  %93 = and i32 %92, 1
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  store i32 0, i32* %14, align 4
  br label %136

96:                                               ; preds = %91
  %97 = load i32, i32* %15, align 4
  %98 = ashr i32 %97, 1
  %99 = load %struct.key*, %struct.key** %13, align 8
  %100 = getelementptr inbounds %struct.key, %struct.key* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 8
  store i32 0, i32* %16, align 4
  br label %101

101:                                              ; preds = %132, %96
  %102 = load i32, i32* %16, align 4
  %103 = load i32, i32* %15, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %135

105:                                              ; preds = %101
  %106 = load i32, i32* %16, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [129 x i8], [129 x i8]* %11, i64 0, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = call i32 @hex_val(i8 signext %109)
  %111 = shl i32 %110, 4
  %112 = load i32, i32* %16, align 4
  %113 = add nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [129 x i8], [129 x i8]* %11, i64 0, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = call i32 @hex_val(i8 signext %116)
  %118 = or i32 %111, %117
  store i32 %118, i32* %17, align 4
  %119 = load i32, i32* %17, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %105
  store i32 0, i32* %14, align 4
  br label %135

122:                                              ; preds = %105
  %123 = load i32, i32* %17, align 4
  %124 = trunc i32 %123 to i8
  %125 = load %struct.key*, %struct.key** %13, align 8
  %126 = getelementptr inbounds %struct.key, %struct.key* %125, i32 0, i32 3
  %127 = load i8*, i8** %126, align 8
  %128 = load i32, i32* %16, align 4
  %129 = ashr i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %127, i64 %130
  store i8 %124, i8* %131, align 1
  br label %132

132:                                              ; preds = %122
  %133 = load i32, i32* %16, align 4
  %134 = add nsw i32 %133, 2
  store i32 %134, i32* %16, align 4
  br label %101

135:                                              ; preds = %121, %101
  br label %136

136:                                              ; preds = %135, %95
  br label %137

137:                                              ; preds = %136, %80
  %138 = load %struct.key*, %struct.key** %13, align 8
  %139 = getelementptr inbounds %struct.key, %struct.key* %138, i32 0, i32 1
  %140 = load i8*, i8** %139, align 8
  %141 = call i64 @keytype_from_text(i8* %140, i32* null)
  %142 = load %struct.key*, %struct.key** %13, align 8
  %143 = getelementptr inbounds %struct.key, %struct.key* %142, i32 0, i32 4
  store i64 %141, i64* %143, align 8
  %144 = load %struct.key*, %struct.key** %13, align 8
  %145 = getelementptr inbounds %struct.key, %struct.key* %144, i32 0, i32 4
  %146 = load i64, i64* %145, align 8
  %147 = icmp eq i64 0, %146
  br i1 %147, label %148, label %158

148:                                              ; preds = %137
  %149 = load i8*, i8** %4, align 8
  %150 = load i32, i32* %9, align 4
  %151 = load %struct.key*, %struct.key** %13, align 8
  %152 = getelementptr inbounds %struct.key, %struct.key* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.key*, %struct.key** %13, align 8
  %155 = getelementptr inbounds %struct.key, %struct.key* %154, i32 0, i32 1
  %156 = load i8*, i8** %155, align 8
  %157 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i8* %149, i32 %150, i32 %153, i8* %156)
  store i32 0, i32* %14, align 4
  br label %158

158:                                              ; preds = %148, %137
  br label %159

159:                                              ; preds = %158, %63
  %160 = load i32, i32* %14, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %178

162:                                              ; preds = %159
  %163 = load %struct.key*, %struct.key** %13, align 8
  %164 = getelementptr inbounds %struct.key, %struct.key* %163, i32 0, i32 5
  store %struct.key* null, %struct.key** %164, align 8
  %165 = load %struct.key*, %struct.key** %7, align 8
  %166 = icmp eq %struct.key* null, %165
  br i1 %166, label %167, label %170

167:                                              ; preds = %162
  %168 = load %struct.key*, %struct.key** %13, align 8
  %169 = load %struct.key**, %struct.key*** %5, align 8
  store %struct.key* %168, %struct.key** %169, align 8
  br label %174

170:                                              ; preds = %162
  %171 = load %struct.key*, %struct.key** %13, align 8
  %172 = load %struct.key*, %struct.key** %7, align 8
  %173 = getelementptr inbounds %struct.key, %struct.key* %172, i32 0, i32 5
  store %struct.key* %171, %struct.key** %173, align 8
  br label %174

174:                                              ; preds = %170, %167
  %175 = load %struct.key*, %struct.key** %13, align 8
  store %struct.key* %175, %struct.key** %7, align 8
  %176 = load i32, i32* @key_cnt, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* @key_cnt, align 4
  br label %188

178:                                              ; preds = %159
  %179 = load i64, i64* @debug, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %178
  %182 = load i32, i32* %8, align 4
  %183 = load i32, i32* %9, align 4
  %184 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %182, i32 %183)
  br label %185

185:                                              ; preds = %181, %178
  %186 = load %struct.key*, %struct.key** %13, align 8
  %187 = call i32 @free(%struct.key* %186)
  br label %188

188:                                              ; preds = %185, %174
  %189 = load i32, i32* %9, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %9, align 4
  br label %44

191:                                              ; preds = %44
  %192 = load i32*, i32** %6, align 8
  %193 = call i32 @fclose(i32* %192)
  %194 = load %struct.key**, %struct.key*** %5, align 8
  %195 = load %struct.key*, %struct.key** %194, align 8
  store %struct.key* %195, %struct.key** @key_ptr, align 8
  %196 = load i32, i32* @key_cnt, align 4
  store i32 %196, i32* %3, align 4
  br label %197

197:                                              ; preds = %191, %40, %29
  %198 = load i32, i32* %3, align 4
  ret i32 %198
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @INIT_SSL(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @feof(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local %struct.key* @emalloc(i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @hex_val(i8 signext) #1

declare dso_local i64 @keytype_from_text(i8*, i32*) #1

declare dso_local i32 @free(%struct.key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
