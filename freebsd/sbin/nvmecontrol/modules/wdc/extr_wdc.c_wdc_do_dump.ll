; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/nvmecontrol/modules/wdc/extr_wdc.c_wdc_do_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/nvmecontrol/modules/wdc/extr_wdc.c_wdc_do_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"open %s\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@NVME_MAX_XFER_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Can't get buffer to read dump\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"No data for %s\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"E6LG\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"Expected header of E6LG, found '%4.4s' instead\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"Dumping %d bytes of version %d.%d log to %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*, i32, i32, i32)* @wdc_do_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wdc_do_dump(i32 %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = load i32, i32* @MAXPATHLEN, align 4
  %22 = load i8*, i8** %9, align 8
  %23 = call i32 @wdc_append_serial_name(i32 %19, i8* %20, i32 %21, i8* %22)
  %24 = load i8*, i8** %8, align 8
  %25 = load i32, i32* @O_WRONLY, align 4
  %26 = load i32, i32* @O_CREAT, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @O_TRUNC, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @open(i8* %24, i32 %29, i32 420)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %6
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %34)
  br label %36

36:                                               ; preds = %33, %6
  %37 = load i32, i32* @PAGE_SIZE, align 4
  %38 = load i32, i32* @NVME_MAX_XFER_SIZE, align 4
  %39 = call i8* @aligned_alloc(i32 %37, i32 %38)
  store i8* %39, i8** %15, align 8
  %40 = load i8*, i8** %15, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %36
  store i32 0, i32* %17, align 4
  %45 = load i32, i32* @NVME_MAX_XFER_SIZE, align 4
  store i32 %45, i32* %16, align 4
  store i32 1, i32* %13, align 4
  br label %46

46:                                               ; preds = %125, %44
  %47 = load i32, i32* %16, align 4
  %48 = load i32, i32* @NVME_MAX_XFER_SIZE, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* @NVME_MAX_XFER_SIZE, align 4
  br label %54

52:                                               ; preds = %46
  %53 = load i32, i32* %16, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  %56 = sext i32 %55 to i64
  store i64 %56, i64* %18, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i64, i64* %18, align 8
  %60 = load i32, i32* %17, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i8*, i8** %15, align 8
  %63 = load i64, i64* %18, align 8
  %64 = call i32 @wdc_get_data(i32 %57, i32 %58, i64 %59, i32 %60, i32 %61, i8* %62, i64 %63)
  %65 = load i32, i32* %13, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %105

67:                                               ; preds = %54
  %68 = load i8*, i8** %15, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = call i32 @be32dec(i8* %71)
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* %16, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %67
  %76 = load i8*, i8** %9, align 8
  %77 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %76)
  br label %78

78:                                               ; preds = %75, %67
  %79 = load i8*, i8** %15, align 8
  %80 = call i64 @memcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %79, i32 4)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i8*, i8** %15, align 8
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i8* %83)
  br label %85

85:                                               ; preds = %82, %78
  %86 = load i32, i32* %16, align 4
  %87 = load i8*, i8** %15, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = load i8*, i8** %15, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 9
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = load i8*, i8** %8, align 8
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %86, i32 %90, i32 %94, i8* %95)
  %97 = load i64, i64* %18, align 8
  %98 = load i32, i32* %16, align 4
  %99 = sext i32 %98 to i64
  %100 = icmp ugt i64 %97, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %85
  %102 = load i32, i32* %16, align 4
  %103 = sext i32 %102 to i64
  store i64 %103, i64* %18, align 8
  br label %104

104:                                              ; preds = %101, %85
  store i32 0, i32* %13, align 4
  br label %105

105:                                              ; preds = %104, %54
  %106 = load i32, i32* %14, align 4
  %107 = load i8*, i8** %15, align 8
  %108 = load i64, i64* %18, align 8
  %109 = call i64 @write(i32 %106, i8* %107, i64 %108)
  %110 = load i64, i64* %18, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %105
  %113 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %114

114:                                              ; preds = %112, %105
  %115 = load i64, i64* %18, align 8
  %116 = load i32, i32* %17, align 4
  %117 = sext i32 %116 to i64
  %118 = add i64 %117, %115
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %17, align 4
  %120 = load i64, i64* %18, align 8
  %121 = load i32, i32* %16, align 4
  %122 = sext i32 %121 to i64
  %123 = sub i64 %122, %120
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %16, align 4
  br label %125

125:                                              ; preds = %114
  %126 = load i32, i32* %16, align 4
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %46, label %128

128:                                              ; preds = %125
  %129 = load i8*, i8** %15, align 8
  %130 = call i32 @free(i8* %129)
  %131 = load i32, i32* %14, align 4
  %132 = call i32 @close(i32 %131)
  ret void
}

declare dso_local i32 @wdc_append_serial_name(i32, i8*, i32, i8*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i8* @aligned_alloc(i32, i32) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @wdc_get_data(i32, i32, i64, i32, i32, i8*, i64) #1

declare dso_local i32 @be32dec(i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @write(i32, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
