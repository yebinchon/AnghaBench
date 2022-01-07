; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_compat.c_insert_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_compat.c_insert_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.change_node = type { i8*, i8* }

@SVN_INVALID_REVNUM = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.change_node* (i8*, i32*)* @insert_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.change_node* @insert_change(i8* %0, i32* %1) #0 {
  %3 = alloca %struct.change_node*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.change_node*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call %struct.change_node* @svn_hash_gets(i32* %8, i8* %9)
  store %struct.change_node* %10, %struct.change_node** %7, align 8
  %11 = load %struct.change_node*, %struct.change_node** %7, align 8
  %12 = icmp ne %struct.change_node* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load %struct.change_node*, %struct.change_node** %7, align 8
  store %struct.change_node* %14, %struct.change_node** %3, align 8
  br label %33

15:                                               ; preds = %2
  %16 = load i32*, i32** %5, align 8
  %17 = call i32* @apr_hash_pool_get(i32* %16)
  store i32* %17, i32** %6, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call %struct.change_node* @apr_pcalloc(i32* %18, i32 16)
  store %struct.change_node* %19, %struct.change_node** %7, align 8
  %20 = load i8*, i8** @SVN_INVALID_REVNUM, align 8
  %21 = load %struct.change_node*, %struct.change_node** %7, align 8
  %22 = getelementptr inbounds %struct.change_node, %struct.change_node* %21, i32 0, i32 1
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** @SVN_INVALID_REVNUM, align 8
  %24 = load %struct.change_node*, %struct.change_node** %7, align 8
  %25 = getelementptr inbounds %struct.change_node, %struct.change_node* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @apr_pstrdup(i32* %27, i8* %28)
  %30 = load %struct.change_node*, %struct.change_node** %7, align 8
  %31 = call i32 @svn_hash_sets(i32* %26, i32 %29, %struct.change_node* %30)
  %32 = load %struct.change_node*, %struct.change_node** %7, align 8
  store %struct.change_node* %32, %struct.change_node** %3, align 8
  br label %33

33:                                               ; preds = %15, %13
  %34 = load %struct.change_node*, %struct.change_node** %3, align 8
  ret %struct.change_node* %34
}

declare dso_local %struct.change_node* @svn_hash_gets(i32*, i8*) #1

declare dso_local i32* @apr_hash_pool_get(i32*) #1

declare dso_local %struct.change_node* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @svn_hash_sets(i32*, i32, %struct.change_node*) #1

declare dso_local i32 @apr_pstrdup(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
