; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_commit.c_make_dir_baton.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_commit.c_make_dir_baton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edit_baton = type { i32 }
%struct.dir_baton = type { i8*, i32, i32, i32*, %struct.dir_baton*, %struct.edit_baton* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dir_baton* (%struct.edit_baton*, %struct.dir_baton*, i8*, i32, i32, i32*)* @make_dir_baton to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dir_baton* @make_dir_baton(%struct.edit_baton* %0, %struct.dir_baton* %1, i8* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.edit_baton*, align 8
  %8 = alloca %struct.dir_baton*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.dir_baton*, align 8
  store %struct.edit_baton* %0, %struct.edit_baton** %7, align 8
  store %struct.dir_baton* %1, %struct.dir_baton** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %14 = load i32*, i32** %12, align 8
  %15 = call %struct.dir_baton* @apr_pcalloc(i32* %14, i32 40)
  store %struct.dir_baton* %15, %struct.dir_baton** %13, align 8
  %16 = load %struct.edit_baton*, %struct.edit_baton** %7, align 8
  %17 = load %struct.dir_baton*, %struct.dir_baton** %13, align 8
  %18 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %17, i32 0, i32 5
  store %struct.edit_baton* %16, %struct.edit_baton** %18, align 8
  %19 = load %struct.dir_baton*, %struct.dir_baton** %8, align 8
  %20 = load %struct.dir_baton*, %struct.dir_baton** %13, align 8
  %21 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %20, i32 0, i32 4
  store %struct.dir_baton* %19, %struct.dir_baton** %21, align 8
  %22 = load i32*, i32** %12, align 8
  %23 = load %struct.dir_baton*, %struct.dir_baton** %13, align 8
  %24 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %23, i32 0, i32 3
  store i32* %22, i32** %24, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = load %struct.dir_baton*, %struct.dir_baton** %13, align 8
  %27 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.dir_baton*, %struct.dir_baton** %13, align 8
  %30 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load %struct.dir_baton*, %struct.dir_baton** %13, align 8
  %33 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load %struct.dir_baton*, %struct.dir_baton** %13, align 8
  ret %struct.dir_baton* %34
}

declare dso_local %struct.dir_baton* @apr_pcalloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
