; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ntlm/extr_ntlm.c_heim_ntlm_calculate_ntlm2_sess.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ntlm/extr_ntlm.c_heim_ntlm_calculate_ntlm2_sess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntlm_buf = type { i8*, i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @heim_ntlm_calculate_ntlm2_sess(i8* %0, i8* %1, i8* %2, %struct.ntlm_buf* %3, %struct.ntlm_buf* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ntlm_buf*, align 8
  %11 = alloca %struct.ntlm_buf*, align 8
  %12 = alloca [8 x i8], align 1
  %13 = alloca [21 x i8], align 16
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.ntlm_buf* %3, %struct.ntlm_buf** %10, align 8
  store %struct.ntlm_buf* %4, %struct.ntlm_buf** %11, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0
  %19 = call i32 @heim_ntlm_calculate_ntlm2_sess_hash(i8* %16, i8* %17, i8* %18)
  store i32 %19, i32* %15, align 4
  %20 = load i32, i32* %15, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* %15, align 4
  store i32 %23, i32* %6, align 4
  br label %105

24:                                               ; preds = %5
  %25 = call i8* @malloc(i32 24)
  %26 = load %struct.ntlm_buf*, %struct.ntlm_buf** %10, align 8
  %27 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = load %struct.ntlm_buf*, %struct.ntlm_buf** %10, align 8
  %29 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* @ENOMEM, align 4
  store i32 %33, i32* %6, align 4
  br label %105

34:                                               ; preds = %24
  %35 = load %struct.ntlm_buf*, %struct.ntlm_buf** %10, align 8
  %36 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %35, i32 0, i32 1
  store i32 24, i32* %36, align 8
  %37 = call i8* @malloc(i32 24)
  %38 = load %struct.ntlm_buf*, %struct.ntlm_buf** %11, align 8
  %39 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  %40 = load %struct.ntlm_buf*, %struct.ntlm_buf** %11, align 8
  %41 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %34
  %45 = load %struct.ntlm_buf*, %struct.ntlm_buf** %10, align 8
  %46 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @free(i8* %47)
  %49 = load %struct.ntlm_buf*, %struct.ntlm_buf** %10, align 8
  %50 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %49, i32 0, i32 0
  store i8* null, i8** %50, align 8
  %51 = load i32, i32* @ENOMEM, align 4
  store i32 %51, i32* %6, align 4
  br label %105

52:                                               ; preds = %34
  %53 = load %struct.ntlm_buf*, %struct.ntlm_buf** %11, align 8
  %54 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %53, i32 0, i32 1
  store i32 24, i32* %54, align 8
  %55 = load %struct.ntlm_buf*, %struct.ntlm_buf** %10, align 8
  %56 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @memset(i8* %57, i32 0, i32 24)
  %59 = load %struct.ntlm_buf*, %struct.ntlm_buf** %10, align 8
  %60 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 @memcpy(i8* %61, i8* %62, i32 8)
  %64 = getelementptr inbounds [21 x i8], [21 x i8]* %13, i64 0, i64 0
  %65 = call i32 @memset(i8* %64, i32 0, i32 21)
  %66 = getelementptr inbounds [21 x i8], [21 x i8]* %13, i64 0, i64 0
  %67 = load i8*, i8** %9, align 8
  %68 = call i32 @memcpy(i8* %66, i8* %67, i32 16)
  %69 = load %struct.ntlm_buf*, %struct.ntlm_buf** %11, align 8
  %70 = getelementptr inbounds %struct.ntlm_buf, %struct.ntlm_buf* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  store i8* %71, i8** %14, align 8
  %72 = getelementptr inbounds [21 x i8], [21 x i8]* %13, i64 0, i64 0
  %73 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0
  %74 = load i8*, i8** %14, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 0
  %76 = call i32 @splitandenc(i8* %72, i8* %73, i8* %75)
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %15, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %52
  br label %99

80:                                               ; preds = %52
  %81 = getelementptr inbounds [21 x i8], [21 x i8]* %13, i64 0, i64 7
  %82 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0
  %83 = load i8*, i8** %14, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 8
  %85 = call i32 @splitandenc(i8* %81, i8* %82, i8* %84)
  store i32 %85, i32* %15, align 4
  %86 = load i32, i32* %15, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  br label %99

89:                                               ; preds = %80
  %90 = getelementptr inbounds [21 x i8], [21 x i8]* %13, i64 0, i64 14
  %91 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0
  %92 = load i8*, i8** %14, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 16
  %94 = call i32 @splitandenc(i8* %90, i8* %91, i8* %93)
  store i32 %94, i32* %15, align 4
  %95 = load i32, i32* %15, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  br label %99

98:                                               ; preds = %89
  store i32 0, i32* %6, align 4
  br label %105

99:                                               ; preds = %97, %88, %79
  %100 = load %struct.ntlm_buf*, %struct.ntlm_buf** %11, align 8
  %101 = call i32 @heim_ntlm_free_buf(%struct.ntlm_buf* %100)
  %102 = load %struct.ntlm_buf*, %struct.ntlm_buf** %10, align 8
  %103 = call i32 @heim_ntlm_free_buf(%struct.ntlm_buf* %102)
  %104 = load i32, i32* %15, align 4
  store i32 %104, i32* %6, align 4
  br label %105

105:                                              ; preds = %99, %98, %44, %32, %22
  %106 = load i32, i32* %6, align 4
  ret i32 %106
}

declare dso_local i32 @heim_ntlm_calculate_ntlm2_sess_hash(i8*, i8*, i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @splitandenc(i8*, i8*, i8*) #1

declare dso_local i32 @heim_ntlm_free_buf(%struct.ntlm_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
