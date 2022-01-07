; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_receiver.c_adreq_decode_and_validate_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_receiver.c_adreq_decode_and_validate_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adreq = type { i64, i64, i32, i32 }

@ADIST_BYTEORDER = common dso_local global i64 0, align 8
@ADIST_BUF_SIZE = common dso_local global i64 0, align 8
@EX_PROTOCOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Invalid datasize received (%ju).\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Invalid command received (%hhu).\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adreq*)* @adreq_decode_and_validate_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adreq_decode_and_validate_header(%struct.adreq* %0) #0 {
  %2 = alloca %struct.adreq*, align 8
  store %struct.adreq* %0, %struct.adreq** %2, align 8
  %3 = load %struct.adreq*, %struct.adreq** %2, align 8
  %4 = getelementptr inbounds %struct.adreq, %struct.adreq* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @ADIST_BYTEORDER, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %24

8:                                                ; preds = %1
  %9 = load i64, i64* @ADIST_BYTEORDER, align 8
  %10 = load %struct.adreq*, %struct.adreq** %2, align 8
  %11 = getelementptr inbounds %struct.adreq, %struct.adreq* %10, i32 0, i32 0
  store i64 %9, i64* %11, align 8
  %12 = load %struct.adreq*, %struct.adreq** %2, align 8
  %13 = getelementptr inbounds %struct.adreq, %struct.adreq* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @bswap64(i32 %14)
  %16 = load %struct.adreq*, %struct.adreq** %2, align 8
  %17 = getelementptr inbounds %struct.adreq, %struct.adreq* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 4
  %18 = load %struct.adreq*, %struct.adreq** %2, align 8
  %19 = getelementptr inbounds %struct.adreq, %struct.adreq* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i64 @bswap32(i64 %20)
  %22 = load %struct.adreq*, %struct.adreq** %2, align 8
  %23 = getelementptr inbounds %struct.adreq, %struct.adreq* %22, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  br label %24

24:                                               ; preds = %8, %1
  %25 = load %struct.adreq*, %struct.adreq** %2, align 8
  %26 = getelementptr inbounds %struct.adreq, %struct.adreq* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ADIST_BUF_SIZE, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load i32, i32* @EX_PROTOCOL, align 4
  %32 = load %struct.adreq*, %struct.adreq** %2, align 8
  %33 = getelementptr inbounds %struct.adreq, %struct.adreq* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i32 @pjdlog_exitx(i32 %31, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %30, %24
  %38 = load %struct.adreq*, %struct.adreq** %2, align 8
  %39 = getelementptr inbounds %struct.adreq, %struct.adreq* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  switch i32 %40, label %67 [
    i32 128, label %41
    i32 132, label %41
    i32 131, label %41
    i32 129, label %54
    i32 130, label %54
  ]

41:                                               ; preds = %37, %37, %37
  %42 = load %struct.adreq*, %struct.adreq** %2, align 8
  %43 = getelementptr inbounds %struct.adreq, %struct.adreq* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load i32, i32* @EX_PROTOCOL, align 4
  %48 = load %struct.adreq*, %struct.adreq** %2, align 8
  %49 = getelementptr inbounds %struct.adreq, %struct.adreq* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i32 @pjdlog_exitx(i32 %47, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %46, %41
  br label %73

54:                                               ; preds = %37, %37
  %55 = load %struct.adreq*, %struct.adreq** %2, align 8
  %56 = getelementptr inbounds %struct.adreq, %struct.adreq* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load i32, i32* @EX_PROTOCOL, align 4
  %61 = load %struct.adreq*, %struct.adreq** %2, align 8
  %62 = getelementptr inbounds %struct.adreq, %struct.adreq* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = call i32 @pjdlog_exitx(i32 %60, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %59, %54
  br label %73

67:                                               ; preds = %37
  %68 = load i32, i32* @EX_PROTOCOL, align 4
  %69 = load %struct.adreq*, %struct.adreq** %2, align 8
  %70 = getelementptr inbounds %struct.adreq, %struct.adreq* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @pjdlog_exitx(i32 %68, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %67, %66, %53
  ret void
}

declare dso_local i32 @bswap64(i32) #1

declare dso_local i64 @bswap32(i64) #1

declare dso_local i32 @pjdlog_exitx(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
