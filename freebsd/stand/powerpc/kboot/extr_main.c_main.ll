; ModuleID = '/home/carl/AnghaBench/freebsd/stand/powerpc/kboot/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/powerpc/kboot/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Boot device: %s\0A\00", align 1
@kboot_getdev = common dso_local global i32 0, align 4
@archsw = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@kboot_copyin = common dso_local global i32 0, align 4
@kboot_copyout = common dso_local global i32 0, align 4
@kboot_readin = common dso_local global i32 0, align 4
@kboot_autoload = common dso_local global i32 0, align 4
@kboot_loadaddr = common dso_local global i32 0, align 4
@kboot_kseg_get = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"\0A%s\00", align 1
@bootprog_info = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"currdev\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"loaddev\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"LINES\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"24\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"usefdt\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i64 15728640, i64* %7, align 8
  %9 = call i8* @host_getmem(i64 15728640)
  store i8* %9, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = getelementptr i8, i8* %11, i64 15728640
  %13 = call i32 @setheap(i8* %10, i8* %12)
  %14 = call i32 (...) @cons_probe()
  %15 = load i32, i32* %4, align 4
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %8, align 8
  br label %22

21:                                               ; preds = %2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %22

22:                                               ; preds = %21, %17
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  %25 = load i32, i32* @kboot_getdev, align 4
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @archsw, i32 0, i32 6), align 4
  %26 = load i32, i32* @kboot_copyin, align 4
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @archsw, i32 0, i32 5), align 4
  %27 = load i32, i32* @kboot_copyout, align 4
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @archsw, i32 0, i32 4), align 4
  %28 = load i32, i32* @kboot_readin, align 4
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @archsw, i32 0, i32 3), align 4
  %29 = load i32, i32* @kboot_autoload, align 4
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @archsw, i32 0, i32 2), align 4
  %30 = load i32, i32* @kboot_loadaddr, align 4
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @archsw, i32 0, i32 1), align 4
  %31 = load i32, i32* @kboot_kseg_get, align 4
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @archsw, i32 0, i32 0), align 4
  %32 = load i8*, i8** @bootprog_info, align 8
  %33 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %32)
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @setenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %34, i32 1)
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @setenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %36, i32 1)
  %38 = call i32 @setenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 1)
  %39 = call i32 @setenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 1)
  %40 = call i32 (...) @interact()
  ret i32 0
}

declare dso_local i8* @host_getmem(i64) #1

declare dso_local i32 @setheap(i8*, i8*) #1

declare dso_local i32 @cons_probe(...) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @setenv(i8*, i8*, i32) #1

declare dso_local i32 @interact(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
