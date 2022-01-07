; ModuleID = '/home/carl/AnghaBench/freebsd/stand/mips/beri/loader/extr_devicename.c_beri_arch_getdev.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/mips/beri/loader/extr_devicename.c_beri_arch_getdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disk_devdesc = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"currdev\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @beri_arch_getdev(i8** %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.disk_devdesc**, align 8
  %9 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %10 = load i8**, i8*** %5, align 8
  %11 = bitcast i8** %10 to %struct.disk_devdesc**
  store %struct.disk_devdesc** %11, %struct.disk_devdesc*** %8, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 47
  br i1 %19, label %24, label %20

20:                                               ; preds = %14
  %21 = load i8*, i8** %6, align 8
  %22 = call i32* @strchr(i8* %21, i8 signext 58)
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %37

24:                                               ; preds = %20, %14, %3
  %25 = load %struct.disk_devdesc**, %struct.disk_devdesc*** %8, align 8
  %26 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %27 = call i32 @beri_arch_parsedev(%struct.disk_devdesc** %25, i8* %26, i8** null)
  store i32 %27, i32* %9, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load i8**, i8*** %7, align 8
  %31 = icmp ne i8** %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i8*, i8** %6, align 8
  %34 = load i8**, i8*** %7, align 8
  store i8* %33, i8** %34, align 8
  br label %35

35:                                               ; preds = %32, %29, %24
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %4, align 4
  br label %42

37:                                               ; preds = %20
  %38 = load %struct.disk_devdesc**, %struct.disk_devdesc*** %8, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i8**, i8*** %7, align 8
  %41 = call i32 @beri_arch_parsedev(%struct.disk_devdesc** %38, i8* %39, i8** %40)
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %37, %35
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @beri_arch_parsedev(%struct.disk_devdesc**, i8*, i8**) #1

declare dso_local i8* @getenv(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
