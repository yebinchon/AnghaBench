; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_mac.c_mac_prepare.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_mac.c_mac_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac = type { i32, i32* }

@MAC_MAX_LABEL_BUF_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_prepare(%struct.mac** %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mac**, align 8
  %5 = alloca i8*, align 8
  store %struct.mac** %0, %struct.mac*** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = call i32 @strlen(i8* %6)
  %8 = load i32, i32* @MAC_MAX_LABEL_BUF_LEN, align 4
  %9 = icmp sge i32 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  store i32 %11, i32* %3, align 4
  br label %49

12:                                               ; preds = %2
  %13 = call i32* @malloc(i32 16)
  %14 = bitcast i32* %13 to %struct.mac*
  %15 = load %struct.mac**, %struct.mac*** %4, align 8
  store %struct.mac* %14, %struct.mac** %15, align 8
  %16 = load %struct.mac**, %struct.mac*** %4, align 8
  %17 = load %struct.mac*, %struct.mac** %16, align 8
  %18 = icmp eq %struct.mac* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = load i32, i32* @ENOMEM, align 4
  store i32 %20, i32* %3, align 4
  br label %49

21:                                               ; preds = %12
  %22 = load i32, i32* @MAC_MAX_LABEL_BUF_LEN, align 4
  %23 = call i32* @malloc(i32 %22)
  %24 = load %struct.mac**, %struct.mac*** %4, align 8
  %25 = load %struct.mac*, %struct.mac** %24, align 8
  %26 = getelementptr inbounds %struct.mac, %struct.mac* %25, i32 0, i32 1
  store i32* %23, i32** %26, align 8
  %27 = load %struct.mac**, %struct.mac*** %4, align 8
  %28 = load %struct.mac*, %struct.mac** %27, align 8
  %29 = getelementptr inbounds %struct.mac, %struct.mac* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %21
  %33 = load %struct.mac**, %struct.mac*** %4, align 8
  %34 = load %struct.mac*, %struct.mac** %33, align 8
  %35 = call i32 @free(%struct.mac* %34)
  %36 = load %struct.mac**, %struct.mac*** %4, align 8
  store %struct.mac* null, %struct.mac** %36, align 8
  %37 = load i32, i32* @ENOMEM, align 4
  store i32 %37, i32* %3, align 4
  br label %49

38:                                               ; preds = %21
  %39 = load %struct.mac**, %struct.mac*** %4, align 8
  %40 = load %struct.mac*, %struct.mac** %39, align 8
  %41 = getelementptr inbounds %struct.mac, %struct.mac* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @strcpy(i32* %42, i8* %43)
  %45 = load i32, i32* @MAC_MAX_LABEL_BUF_LEN, align 4
  %46 = load %struct.mac**, %struct.mac*** %4, align 8
  %47 = load %struct.mac*, %struct.mac** %46, align 8
  %48 = getelementptr inbounds %struct.mac, %struct.mac* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 8
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %38, %32, %19, %10
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @free(%struct.mac*) #1

declare dso_local i32 @strcpy(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
