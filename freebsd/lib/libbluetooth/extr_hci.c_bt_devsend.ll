; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libbluetooth/extr_hci.c_bt_devsend.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libbluetooth/extr_hci.c_bt_devsend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.iovec = type { i32, %struct.TYPE_2__* }

@UINT8_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@NG_HCI_CMD_PKT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bt_devsend(i32 %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_2__, align 8
  %11 = alloca [2 x %struct.iovec], align 16
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i64, i64* %9, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i8*, i8** %8, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %15, %4
  %19 = load i64, i64* %9, align 8
  %20 = icmp ugt i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i8*, i8** %8, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %21, %18
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* @UINT8_MAX, align 8
  %27 = icmp ugt i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24, %21, %15
  %29 = load i64, i64* @EINVAL, align 8
  store i64 %29, i64* @errno, align 8
  store i32 -1, i32* %5, align 4
  br label %73

30:                                               ; preds = %24
  %31 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %11, i64 0, i64 0
  %32 = getelementptr inbounds %struct.iovec, %struct.iovec* %31, i32 0, i32 1
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %32, align 8
  %33 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %11, i64 0, i64 0
  %34 = getelementptr inbounds %struct.iovec, %struct.iovec* %33, i32 0, i32 0
  store i32 16, i32* %34, align 16
  store i32 1, i32* %12, align 4
  %35 = load i32, i32* @NG_HCI_CMD_PKT, align 4
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @htole16(i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  store i32 %38, i32* %39, align 8
  %40 = load i64, i64* %9, align 8
  %41 = icmp ugt i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %30
  %43 = load i64, i64* %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i64 %43, i64* %44, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = bitcast i8* %45 to %struct.TYPE_2__*
  %47 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %11, i64 0, i64 1
  %48 = getelementptr inbounds %struct.iovec, %struct.iovec* %47, i32 0, i32 1
  store %struct.TYPE_2__* %46, %struct.TYPE_2__** %48, align 8
  %49 = load i64, i64* %9, align 8
  %50 = trunc i64 %49 to i32
  %51 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %11, i64 0, i64 1
  %52 = getelementptr inbounds %struct.iovec, %struct.iovec* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 16
  store i32 2, i32* %12, align 4
  br label %55

53:                                               ; preds = %30
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i64 0, i64* %54, align 8
  br label %55

55:                                               ; preds = %53, %42
  br label %56

56:                                               ; preds = %70, %55
  %57 = load i32, i32* %6, align 4
  %58 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %11, i64 0, i64 0
  %59 = load i32, i32* %12, align 4
  %60 = call i64 @writev(i32 %57, %struct.iovec* %58, i32 %59)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %56
  %63 = load i64, i64* @errno, align 8
  %64 = load i64, i64* @EAGAIN, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = load i64, i64* @errno, align 8
  %68 = load i64, i64* @EINTR, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66, %62
  br label %56

71:                                               ; preds = %66
  store i32 -1, i32* %5, align 4
  br label %73

72:                                               ; preds = %56
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %72, %71, %28
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i32 @htole16(i32) #1

declare dso_local i64 @writev(i32, %struct.iovec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
