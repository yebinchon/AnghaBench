; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_pwd/extr_cap_pwd.c_getpwuid_r.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_pwd/extr_cap_pwd.c_getpwuid_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"getpwuid_r\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cap_getpwuid_r(i32* %0, i32 %1, %struct.passwd* %2, i8* %3, i64 %4, %struct.passwd** %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.passwd*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.passwd**, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.passwd* %2, %struct.passwd** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store %struct.passwd** %5, %struct.passwd*** %12, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.passwd*, %struct.passwd** %9, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = load i64, i64* %11, align 8
  %18 = load %struct.passwd**, %struct.passwd*** %12, align 8
  %19 = call i32 @cap_getpwcommon_r(i32* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* null, i32 %14, %struct.passwd* %15, i8* %16, i64 %17, %struct.passwd** %18)
  ret i32 %19
}

declare dso_local i32 @cap_getpwcommon_r(i32*, i8*, i32*, i32, %struct.passwd*, i8*, i64, %struct.passwd**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
