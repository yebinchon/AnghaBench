; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hlr_auc_gw.c_read_gsm_triplets.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hlr_auc_gw.c_read_gsm_triplets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsm_triplet = type { %struct.gsm_triplet*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Could not open GSM triplet data file '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"%s:%d - Invalid IMSI\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"%s:%d - Invalid Kc\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"%s:%d - Invalid SRES\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"%s:%d - Invalid RAND\0A\00", align 1
@gsm_db = common dso_local global %struct.gsm_triplet* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @read_gsm_triplets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_gsm_triplets(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [200 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.gsm_triplet*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.gsm_triplet* null, %struct.gsm_triplet** %8, align 8
  store i32 0, i32* %10, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %163

14:                                               ; preds = %1
  %15 = load i8*, i8** %3, align 8
  %16 = call i32* @fopen(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %16, i32** %4, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  store i32 -1, i32* %2, align 4
  br label %163

22:                                               ; preds = %14
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %152, %67, %36, %22
  %24 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %25 = load i32*, i32** %4, align 8
  %26 = call i64 @fgets(i8* %24, i32 200, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %157

28:                                               ; preds = %23
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %9, align 4
  %31 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 199
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %33 = load i8, i8* %32, align 16
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 35
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %23

37:                                               ; preds = %28
  %38 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  store i8* %38, i8** %6, align 8
  br label %39

39:                                               ; preds = %51, %37
  %40 = load i8*, i8** %6, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load i8*, i8** %6, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 10
  br label %49

49:                                               ; preds = %44, %39
  %50 = phi i1 [ false, %39 ], [ %48, %44 ]
  br i1 %50, label %51, label %54

51:                                               ; preds = %49
  %52 = load i8*, i8** %6, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %6, align 8
  br label %39

54:                                               ; preds = %49
  %55 = load i8*, i8** %6, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 10
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i8*, i8** %6, align 8
  store i8 0, i8* %60, align 1
  br label %61

61:                                               ; preds = %59, %54
  %62 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  store i8* %62, i8** %6, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %23

68:                                               ; preds = %61
  %69 = call %struct.gsm_triplet* @os_zalloc(i32 24)
  store %struct.gsm_triplet* %69, %struct.gsm_triplet** %8, align 8
  %70 = load %struct.gsm_triplet*, %struct.gsm_triplet** %8, align 8
  %71 = icmp eq %struct.gsm_triplet* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store i32 -1, i32* %10, align 4
  br label %157

73:                                               ; preds = %68
  store i8* null, i8** %7, align 8
  %74 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %75 = call i8* @str_token(i8* %74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %7)
  store i8* %75, i8** %6, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load i8*, i8** %6, align 8
  %80 = call i32 @os_strlen(i8* %79)
  %81 = sext i32 %80 to i64
  %82 = icmp uge i64 %81, 4
  br i1 %82, label %83, label %87

83:                                               ; preds = %78, %73
  %84 = load i8*, i8** %3, align 8
  %85 = load i32, i32* %9, align 4
  %86 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %84, i32 %85)
  store i32 -1, i32* %10, align 4
  br label %157

87:                                               ; preds = %78
  %88 = load %struct.gsm_triplet*, %struct.gsm_triplet** %8, align 8
  %89 = getelementptr inbounds %struct.gsm_triplet, %struct.gsm_triplet* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = load i8*, i8** %6, align 8
  %92 = call i32 @os_strlcpy(i32 %90, i8* %91, i32 4)
  %93 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %94 = call i8* @str_token(i8* %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %7)
  store i8* %94, i8** %6, align 8
  %95 = load i8*, i8** %6, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %108

97:                                               ; preds = %87
  %98 = load i8*, i8** %6, align 8
  %99 = call i32 @os_strlen(i8* %98)
  %100 = icmp ne i32 %99, 16
  br i1 %100, label %108, label %101

101:                                              ; preds = %97
  %102 = load i8*, i8** %6, align 8
  %103 = load %struct.gsm_triplet*, %struct.gsm_triplet** %8, align 8
  %104 = getelementptr inbounds %struct.gsm_triplet, %struct.gsm_triplet* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = call i64 @hexstr2bin(i8* %102, i32 %105, i32 8)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %101, %97, %87
  %109 = load i8*, i8** %3, align 8
  %110 = load i32, i32* %9, align 4
  %111 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %109, i32 %110)
  store i32 -1, i32* %10, align 4
  br label %157

112:                                              ; preds = %101
  %113 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %114 = call i8* @str_token(i8* %113, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %7)
  store i8* %114, i8** %6, align 8
  %115 = load i8*, i8** %6, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %117, label %128

117:                                              ; preds = %112
  %118 = load i8*, i8** %6, align 8
  %119 = call i32 @os_strlen(i8* %118)
  %120 = icmp ne i32 %119, 8
  br i1 %120, label %128, label %121

121:                                              ; preds = %117
  %122 = load i8*, i8** %6, align 8
  %123 = load %struct.gsm_triplet*, %struct.gsm_triplet** %8, align 8
  %124 = getelementptr inbounds %struct.gsm_triplet, %struct.gsm_triplet* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @hexstr2bin(i8* %122, i32 %125, i32 4)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %121, %117, %112
  %129 = load i8*, i8** %3, align 8
  %130 = load i32, i32* %9, align 4
  %131 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %129, i32 %130)
  store i32 -1, i32* %10, align 4
  br label %157

132:                                              ; preds = %121
  %133 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %134 = call i8* @str_token(i8* %133, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %7)
  store i8* %134, i8** %6, align 8
  %135 = load i8*, i8** %6, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %148

137:                                              ; preds = %132
  %138 = load i8*, i8** %6, align 8
  %139 = call i32 @os_strlen(i8* %138)
  %140 = icmp ne i32 %139, 32
  br i1 %140, label %148, label %141

141:                                              ; preds = %137
  %142 = load i8*, i8** %6, align 8
  %143 = load %struct.gsm_triplet*, %struct.gsm_triplet** %8, align 8
  %144 = getelementptr inbounds %struct.gsm_triplet, %struct.gsm_triplet* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = call i64 @hexstr2bin(i8* %142, i32 %145, i32 16)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %141, %137, %132
  %149 = load i8*, i8** %3, align 8
  %150 = load i32, i32* %9, align 4
  %151 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* %149, i32 %150)
  store i32 -1, i32* %10, align 4
  br label %157

152:                                              ; preds = %141
  %153 = load %struct.gsm_triplet*, %struct.gsm_triplet** @gsm_db, align 8
  %154 = load %struct.gsm_triplet*, %struct.gsm_triplet** %8, align 8
  %155 = getelementptr inbounds %struct.gsm_triplet, %struct.gsm_triplet* %154, i32 0, i32 0
  store %struct.gsm_triplet* %153, %struct.gsm_triplet** %155, align 8
  %156 = load %struct.gsm_triplet*, %struct.gsm_triplet** %8, align 8
  store %struct.gsm_triplet* %156, %struct.gsm_triplet** @gsm_db, align 8
  store %struct.gsm_triplet* null, %struct.gsm_triplet** %8, align 8
  br label %23

157:                                              ; preds = %148, %128, %108, %83, %72, %23
  %158 = load %struct.gsm_triplet*, %struct.gsm_triplet** %8, align 8
  %159 = call i32 @os_free(%struct.gsm_triplet* %158)
  %160 = load i32*, i32** %4, align 8
  %161 = call i32 @fclose(i32* %160)
  %162 = load i32, i32* %10, align 4
  store i32 %162, i32* %2, align 4
  br label %163

163:                                              ; preds = %157, %19, %13
  %164 = load i32, i32* %2, align 4
  ret i32 %164
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local %struct.gsm_triplet* @os_zalloc(i32) #1

declare dso_local i8* @str_token(i8*, i8*, i8**) #1

declare dso_local i32 @os_strlen(i8*) #1

declare dso_local i32 @os_strlcpy(i32, i8*, i32) #1

declare dso_local i64 @hexstr2bin(i8*, i32, i32) #1

declare dso_local i32 @os_free(%struct.gsm_triplet*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
