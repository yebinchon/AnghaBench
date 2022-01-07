; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_deprecated.c_blame_wrapper_receiver2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_deprecated.c_blame_wrapper_receiver2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blame_receiver_wrapper_baton2 = type { i32, i32* (i32, i32, i32, i8*, i8*, i32, i8*, i8*, i8*, i8*, i32*)* }

@SVN_PROP_REVISION_AUTHOR = common dso_local global i32 0, align 4
@SVN_PROP_REVISION_DATE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32, i32, i32, i32, i32*, i32, i32*, i8*, i8*, i32, i32*)* @blame_wrapper_receiver2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @blame_wrapper_receiver2(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i32 %6, i32* %7, i8* %8, i8* %9, i32 %10, i32* %11) #0 {
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca %struct.blame_receiver_wrapper_baton2*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  store i8* %0, i8** %14, align 8
  store i32 %1, i32* %15, align 4
  store i32 %2, i32* %16, align 4
  store i32 %3, i32* %17, align 4
  store i32 %4, i32* %18, align 4
  store i32* %5, i32** %19, align 8
  store i32 %6, i32* %20, align 4
  store i32* %7, i32** %21, align 8
  store i8* %8, i8** %22, align 8
  store i8* %9, i8** %23, align 8
  store i32 %10, i32* %24, align 4
  store i32* %11, i32** %25, align 8
  %31 = load i8*, i8** %14, align 8
  %32 = bitcast i8* %31 to %struct.blame_receiver_wrapper_baton2*
  store %struct.blame_receiver_wrapper_baton2* %32, %struct.blame_receiver_wrapper_baton2** %26, align 8
  store i8* null, i8** %27, align 8
  store i8* null, i8** %28, align 8
  store i8* null, i8** %29, align 8
  store i8* null, i8** %30, align 8
  %33 = load i32*, i32** %19, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %12
  %36 = load i32*, i32** %19, align 8
  %37 = load i32, i32* @SVN_PROP_REVISION_AUTHOR, align 4
  %38 = call i8* @svn_prop_get_value(i32* %36, i32 %37)
  store i8* %38, i8** %27, align 8
  %39 = load i32*, i32** %19, align 8
  %40 = load i32, i32* @SVN_PROP_REVISION_DATE, align 4
  %41 = call i8* @svn_prop_get_value(i32* %39, i32 %40)
  store i8* %41, i8** %28, align 8
  br label %42

42:                                               ; preds = %35, %12
  %43 = load i32*, i32** %21, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load i32*, i32** %21, align 8
  %47 = load i32, i32* @SVN_PROP_REVISION_AUTHOR, align 4
  %48 = call i8* @svn_prop_get_value(i32* %46, i32 %47)
  store i8* %48, i8** %29, align 8
  %49 = load i32*, i32** %21, align 8
  %50 = load i32, i32* @SVN_PROP_REVISION_DATE, align 4
  %51 = call i8* @svn_prop_get_value(i32* %49, i32 %50)
  store i8* %51, i8** %30, align 8
  br label %52

52:                                               ; preds = %45, %42
  %53 = load %struct.blame_receiver_wrapper_baton2*, %struct.blame_receiver_wrapper_baton2** %26, align 8
  %54 = getelementptr inbounds %struct.blame_receiver_wrapper_baton2, %struct.blame_receiver_wrapper_baton2* %53, i32 0, i32 1
  %55 = load i32* (i32, i32, i32, i8*, i8*, i32, i8*, i8*, i8*, i8*, i32*)*, i32* (i32, i32, i32, i8*, i8*, i32, i8*, i8*, i8*, i8*, i32*)** %54, align 8
  %56 = icmp ne i32* (i32, i32, i32, i8*, i8*, i32, i8*, i8*, i8*, i8*, i32*)* %55, null
  br i1 %56, label %57, label %75

57:                                               ; preds = %52
  %58 = load %struct.blame_receiver_wrapper_baton2*, %struct.blame_receiver_wrapper_baton2** %26, align 8
  %59 = getelementptr inbounds %struct.blame_receiver_wrapper_baton2, %struct.blame_receiver_wrapper_baton2* %58, i32 0, i32 1
  %60 = load i32* (i32, i32, i32, i8*, i8*, i32, i8*, i8*, i8*, i8*, i32*)*, i32* (i32, i32, i32, i8*, i8*, i32, i8*, i8*, i8*, i8*, i32*)** %59, align 8
  %61 = load %struct.blame_receiver_wrapper_baton2*, %struct.blame_receiver_wrapper_baton2** %26, align 8
  %62 = getelementptr inbounds %struct.blame_receiver_wrapper_baton2, %struct.blame_receiver_wrapper_baton2* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %17, align 4
  %65 = load i32, i32* %18, align 4
  %66 = load i8*, i8** %27, align 8
  %67 = load i8*, i8** %28, align 8
  %68 = load i32, i32* %20, align 4
  %69 = load i8*, i8** %29, align 8
  %70 = load i8*, i8** %30, align 8
  %71 = load i8*, i8** %22, align 8
  %72 = load i8*, i8** %23, align 8
  %73 = load i32*, i32** %25, align 8
  %74 = call i32* %60(i32 %63, i32 %64, i32 %65, i8* %66, i8* %67, i32 %68, i8* %69, i8* %70, i8* %71, i8* %72, i32* %73)
  store i32* %74, i32** %13, align 8
  br label %77

75:                                               ; preds = %52
  %76 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %76, i32** %13, align 8
  br label %77

77:                                               ; preds = %75, %57
  %78 = load i32*, i32** %13, align 8
  ret i32* %78
}

declare dso_local i8* @svn_prop_get_value(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
