; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_status.c_add_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_status.c_add_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_baton = type { i8* }
%struct.file_baton = type { i8* }

@TRUE = common dso_local global i8* null, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i8*, i32, i32*, i8**)* @add_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @add_file(i8* %0, i8* %1, i8* %2, i32 %3, i32* %4, i8** %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca %struct.dir_baton*, align 8
  %14 = alloca %struct.file_baton*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i8** %5, i8*** %12, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to %struct.dir_baton*
  store %struct.dir_baton* %16, %struct.dir_baton** %13, align 8
  %17 = load %struct.dir_baton*, %struct.dir_baton** %13, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = call %struct.file_baton* @make_file_baton(%struct.dir_baton* %17, i8* %18, i32* %19)
  store %struct.file_baton* %20, %struct.file_baton** %14, align 8
  %21 = load i8*, i8** @TRUE, align 8
  %22 = load %struct.dir_baton*, %struct.dir_baton** %13, align 8
  %23 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  %24 = load i8*, i8** @TRUE, align 8
  %25 = load %struct.file_baton*, %struct.file_baton** %14, align 8
  %26 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  %27 = load %struct.file_baton*, %struct.file_baton** %14, align 8
  %28 = bitcast %struct.file_baton* %27 to i8*
  %29 = load i8**, i8*** %12, align 8
  store i8* %28, i8** %29, align 8
  %30 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %30
}

declare dso_local %struct.file_baton* @make_file_baton(%struct.dir_baton*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
