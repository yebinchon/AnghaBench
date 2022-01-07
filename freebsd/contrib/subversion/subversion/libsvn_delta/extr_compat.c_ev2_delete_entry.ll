; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_compat.c_ev2_delete_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_compat.c_ev2_delete_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ev2_dir_baton = type { i64, i32 }
%struct.change_node = type { i64, i64 }

@RESTRUCTURE_NONE = common dso_local global i64 0, align 8
@RESTRUCTURE_DELETE = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i64, i8*, i32*)* @ev2_delete_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ev2_delete_entry(i8* %0, i64 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ev2_dir_baton*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.change_node*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.ev2_dir_baton*
  store %struct.ev2_dir_baton* %14, %struct.ev2_dir_baton** %9, align 8
  %15 = load %struct.ev2_dir_baton*, %struct.ev2_dir_baton** %9, align 8
  %16 = getelementptr inbounds %struct.ev2_dir_baton, %struct.ev2_dir_baton* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = call i8* @map_to_repos_relpath(i32 %17, i8* %18, i32* %19)
  store i8* %20, i8** %11, align 8
  %21 = load %struct.ev2_dir_baton*, %struct.ev2_dir_baton** %9, align 8
  %22 = getelementptr inbounds %struct.ev2_dir_baton, %struct.ev2_dir_baton* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = call %struct.change_node* @locate_change(i32 %23, i8* %24)
  store %struct.change_node* %25, %struct.change_node** %12, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i64 @SVN_IS_VALID_REVNUM(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i64, i64* %6, align 8
  store i64 %30, i64* %10, align 8
  br label %35

31:                                               ; preds = %4
  %32 = load %struct.ev2_dir_baton*, %struct.ev2_dir_baton** %9, align 8
  %33 = getelementptr inbounds %struct.ev2_dir_baton, %struct.ev2_dir_baton* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %10, align 8
  br label %35

35:                                               ; preds = %31, %29
  %36 = load %struct.change_node*, %struct.change_node** %12, align 8
  %37 = getelementptr inbounds %struct.change_node, %struct.change_node* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @RESTRUCTURE_NONE, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @SVN_ERR_ASSERT(i32 %41)
  %43 = load i64, i64* @RESTRUCTURE_DELETE, align 8
  %44 = load %struct.change_node*, %struct.change_node** %12, align 8
  %45 = getelementptr inbounds %struct.change_node, %struct.change_node* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.change_node*, %struct.change_node** %12, align 8
  %47 = getelementptr inbounds %struct.change_node, %struct.change_node* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @SVN_IS_VALID_REVNUM(i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %35
  %52 = load %struct.change_node*, %struct.change_node** %12, align 8
  %53 = getelementptr inbounds %struct.change_node, %struct.change_node* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %10, align 8
  %56 = icmp eq i64 %54, %55
  br label %57

57:                                               ; preds = %51, %35
  %58 = phi i1 [ true, %35 ], [ %56, %51 ]
  %59 = zext i1 %58 to i32
  %60 = call i32 @SVN_ERR_ASSERT(i32 %59)
  %61 = load i64, i64* %10, align 8
  %62 = load %struct.change_node*, %struct.change_node** %12, align 8
  %63 = getelementptr inbounds %struct.change_node, %struct.change_node* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  %64 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %64
}

declare dso_local i8* @map_to_repos_relpath(i32, i8*, i32*) #1

declare dso_local %struct.change_node* @locate_change(i32, i8*) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i64) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
