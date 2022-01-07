; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_externals.c_svn_wc__external_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_externals.c_svn_wc__external_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@svn_node_dir = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__external_register(%struct.TYPE_3__* %0, i8* %1, i8* %2, i64 %3, i8* %4, i8* %5, i8* %6, i32 %7, i32 %8, i32* %9) #0 {
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %11, align 8
  store i8* %1, i8** %12, align 8
  store i8* %2, i8** %13, align 8
  store i64 %3, i64* %14, align 8
  store i8* %4, i8** %15, align 8
  store i8* %5, i8** %16, align 8
  store i8* %6, i8** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32* %9, i32** %20, align 8
  %21 = load i64, i64* %14, align 8
  %22 = load i64, i64* @svn_node_dir, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @SVN_ERR_ASSERT(i32 %24)
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %13, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = load i8*, i8** %15, align 8
  %32 = load i8*, i8** %16, align 8
  %33 = load i8*, i8** %12, align 8
  %34 = load i8*, i8** %17, align 8
  %35 = load i32, i32* %18, align 4
  %36 = load i32, i32* %19, align 4
  %37 = load i32*, i32** %20, align 8
  %38 = call i32 @svn_wc__db_external_add_dir(i32 %28, i8* %29, i8* %30, i8* %31, i8* %32, i8* %33, i8* %34, i32 %35, i32 %36, i32* null, i32* %37)
  %39 = call i32* @svn_error_trace(i32 %38)
  ret i32* %39
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_wc__db_external_add_dir(i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
