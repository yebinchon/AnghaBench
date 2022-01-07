; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/sparc64/sys/extr___sparc_utrap_install.c___sparc_utrap_install.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/sparc64/sys/extr___sparc_utrap_install.c___sparc_utrap_install.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sparc_utrap_install_args = type { i32, %struct.sparc_utrap_args* }
%struct.sparc_utrap_args = type { i8**, i8**, i8*, i8*, i32 }

@SPARC_UTRAP_INSTALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__sparc_utrap_install(i32 %0, i8* %1, i8* %2, i8** %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca %struct.sparc_utrap_install_args, align 8
  %12 = alloca [1 x %struct.sparc_utrap_args], align 16
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i8** %4, i8*** %10, align 8
  %13 = load i32, i32* %6, align 4
  %14 = getelementptr inbounds [1 x %struct.sparc_utrap_args], [1 x %struct.sparc_utrap_args]* %12, i64 0, i64 0
  %15 = getelementptr inbounds %struct.sparc_utrap_args, %struct.sparc_utrap_args* %14, i32 0, i32 4
  store i32 %13, i32* %15, align 16
  %16 = load i8*, i8** %7, align 8
  %17 = getelementptr inbounds [1 x %struct.sparc_utrap_args], [1 x %struct.sparc_utrap_args]* %12, i64 0, i64 0
  %18 = getelementptr inbounds %struct.sparc_utrap_args, %struct.sparc_utrap_args* %17, i32 0, i32 3
  store i8* %16, i8** %18, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = getelementptr inbounds [1 x %struct.sparc_utrap_args], [1 x %struct.sparc_utrap_args]* %12, i64 0, i64 0
  %21 = getelementptr inbounds %struct.sparc_utrap_args, %struct.sparc_utrap_args* %20, i32 0, i32 2
  store i8* %19, i8** %21, align 16
  %22 = load i8**, i8*** %9, align 8
  %23 = getelementptr inbounds [1 x %struct.sparc_utrap_args], [1 x %struct.sparc_utrap_args]* %12, i64 0, i64 0
  %24 = getelementptr inbounds %struct.sparc_utrap_args, %struct.sparc_utrap_args* %23, i32 0, i32 0
  store i8** %22, i8*** %24, align 16
  %25 = load i8**, i8*** %10, align 8
  %26 = getelementptr inbounds [1 x %struct.sparc_utrap_args], [1 x %struct.sparc_utrap_args]* %12, i64 0, i64 0
  %27 = getelementptr inbounds %struct.sparc_utrap_args, %struct.sparc_utrap_args* %26, i32 0, i32 1
  store i8** %25, i8*** %27, align 8
  %28 = getelementptr inbounds %struct.sparc_utrap_install_args, %struct.sparc_utrap_install_args* %11, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = getelementptr inbounds [1 x %struct.sparc_utrap_args], [1 x %struct.sparc_utrap_args]* %12, i64 0, i64 0
  %30 = getelementptr inbounds %struct.sparc_utrap_install_args, %struct.sparc_utrap_install_args* %11, i32 0, i32 1
  store %struct.sparc_utrap_args* %29, %struct.sparc_utrap_args** %30, align 8
  %31 = load i32, i32* @SPARC_UTRAP_INSTALL, align 4
  %32 = call i32 @sysarch(i32 %31, %struct.sparc_utrap_install_args* %11)
  ret i32 %32
}

declare dso_local i32 @sysarch(i32, %struct.sparc_utrap_install_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
