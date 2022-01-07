; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_wrap_3to2_link_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_wrap_3to2_link_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wrap_3to2_report_baton = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* (i32, i8*, i8*, i32, i32, i8*, i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i8*, i32, i32, i32, i8*, i32*)* @wrap_3to2_link_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @wrap_3to2_link_path(i8* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5, i8* %6, i32* %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.wrap_3to2_report_baton*, align 8
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  store i32* %7, i32** %16, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = bitcast i8* %18 to %struct.wrap_3to2_report_baton*
  store %struct.wrap_3to2_report_baton* %19, %struct.wrap_3to2_report_baton** %17, align 8
  %20 = load %struct.wrap_3to2_report_baton*, %struct.wrap_3to2_report_baton** %17, align 8
  %21 = getelementptr inbounds %struct.wrap_3to2_report_baton, %struct.wrap_3to2_report_baton* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32* (i32, i8*, i8*, i32, i32, i8*, i32*)*, i32* (i32, i8*, i8*, i32, i32, i8*, i32*)** %23, align 8
  %25 = load %struct.wrap_3to2_report_baton*, %struct.wrap_3to2_report_baton** %17, align 8
  %26 = getelementptr inbounds %struct.wrap_3to2_report_baton, %struct.wrap_3to2_report_baton* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %14, align 4
  %32 = load i8*, i8** %15, align 8
  %33 = load i32*, i32** %16, align 8
  %34 = call i32* %24(i32 %27, i8* %28, i8* %29, i32 %30, i32 %31, i8* %32, i32* %33)
  ret i32* %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
