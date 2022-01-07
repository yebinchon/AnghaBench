; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_dosfs.c_dos_read_fatblk.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_dosfs.c_dos_read_fatblk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i64, i32 }
%struct.open_file = type { i32 }

@FATBLKSZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, %struct.open_file*, i8*)* @dos_read_fatblk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dos_read_fatblk(%struct.TYPE_3__* %0, %struct.open_file* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.open_file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store %struct.open_file* %1, %struct.open_file** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = ptrtoint i8* %12 to i64
  %14 = load i64, i64* @FATBLKSZ, align 8
  %15 = mul i64 %13, %14
  store i64 %15, i64* %10, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @secbyt(i32 %18)
  store i64 %19, i64* %11, align 8
  %20 = load i64, i64* @FATBLKSZ, align 8
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* %11, align 8
  %23 = icmp ugt i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i64, i64* %11, align 8
  store i64 %25, i64* %10, align 8
  br label %26

26:                                               ; preds = %24, %3
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* %9, align 8
  %29 = add i64 %27, %28
  %30 = load i64, i64* %11, align 8
  %31 = icmp ugt i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i64, i64* %11, align 8
  %34 = load i64, i64* %10, align 8
  %35 = sub i64 %33, %34
  store i64 %35, i64* %9, align 8
  br label %36

36:                                               ; preds = %32, %26
  %37 = load i64, i64* %9, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %36
  %40 = load %struct.open_file*, %struct.open_file** %6, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %10, align 8
  %45 = call i64 @bytsec(i64 %44)
  %46 = add nsw i64 %43, %45
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i64, i64* %9, align 8
  %51 = call i32 @ioget(%struct.open_file* %40, i64 %46, i32 %49, i64 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %39
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store i8* inttoptr (i64 -1 to i8*), i8** %56, align 8
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %4, align 4
  br label %79

58:                                               ; preds = %39
  br label %59

59:                                               ; preds = %58, %36
  %60 = load i64, i64* %9, align 8
  %61 = load i64, i64* @FATBLKSZ, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %59
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = load i64, i64* %9, align 8
  %69 = add i64 %67, %68
  %70 = trunc i64 %69 to i32
  %71 = load i64, i64* @FATBLKSZ, align 8
  %72 = load i64, i64* %9, align 8
  %73 = sub i64 %71, %72
  %74 = call i32 @memset(i32 %70, i32 0, i64 %73)
  br label %75

75:                                               ; preds = %63, %59
  %76 = load i8*, i8** %7, align 8
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  store i8* %76, i8** %78, align 8
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %75, %54
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i64 @secbyt(i32) #1

declare dso_local i32 @ioget(%struct.open_file*, i64, i32, i64) #1

declare dso_local i64 @bytsec(i64) #1

declare dso_local i32 @memset(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
