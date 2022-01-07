; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_compat.c_ev2_change_file_prop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_compat.c_ev2_change_file_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ev2_file_baton = type { i32, i32, i32 }
%struct.change_node = type { i32 }

@SVN_PROP_ENTRY_LOCK_TOKEN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32*, i32*)* @ev2_change_file_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ev2_change_file_prop(i8* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ev2_file_baton*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.change_node*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.ev2_file_baton*
  store %struct.ev2_file_baton* %13, %struct.ev2_file_baton** %9, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i32, i32* @SVN_PROP_ENTRY_LOCK_TOKEN, align 4
  %16 = call i32 @strcmp(i8* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %38, label %18

18:                                               ; preds = %4
  %19 = load i32*, i32** %7, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %38

21:                                               ; preds = %18
  %22 = load %struct.ev2_file_baton*, %struct.ev2_file_baton** %9, align 8
  %23 = getelementptr inbounds %struct.ev2_file_baton, %struct.ev2_file_baton* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ev2_file_baton*, %struct.ev2_file_baton** %9, align 8
  %26 = getelementptr inbounds %struct.ev2_file_baton, %struct.ev2_file_baton* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %8, align 8
  %29 = call i8* @map_to_repos_relpath(i32 %24, i32 %27, i32* %28)
  store i8* %29, i8** %10, align 8
  %30 = load %struct.ev2_file_baton*, %struct.ev2_file_baton** %9, align 8
  %31 = getelementptr inbounds %struct.ev2_file_baton, %struct.ev2_file_baton* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %10, align 8
  %34 = call %struct.change_node* @locate_change(i32 %32, i8* %33)
  store %struct.change_node* %34, %struct.change_node** %11, align 8
  %35 = load i32, i32* @TRUE, align 4
  %36 = load %struct.change_node*, %struct.change_node** %11, align 8
  %37 = getelementptr inbounds %struct.change_node, %struct.change_node* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %21, %18, %4
  %39 = load %struct.ev2_file_baton*, %struct.ev2_file_baton** %9, align 8
  %40 = getelementptr inbounds %struct.ev2_file_baton, %struct.ev2_file_baton* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ev2_file_baton*, %struct.ev2_file_baton** %9, align 8
  %43 = getelementptr inbounds %struct.ev2_file_baton, %struct.ev2_file_baton* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @svn_node_file, align 4
  %46 = load %struct.ev2_file_baton*, %struct.ev2_file_baton** %9, align 8
  %47 = getelementptr inbounds %struct.ev2_file_baton, %struct.ev2_file_baton* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i8*, i8** %6, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @apply_propedit(i32 %41, i32 %44, i32 %45, i32 %48, i8* %49, i32* %50, i32* %51)
  %53 = call i32 @SVN_ERR(i32 %52)
  %54 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %54
}

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i8* @map_to_repos_relpath(i32, i32, i32*) #1

declare dso_local %struct.change_node* @locate_change(i32, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @apply_propedit(i32, i32, i32, i32, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
