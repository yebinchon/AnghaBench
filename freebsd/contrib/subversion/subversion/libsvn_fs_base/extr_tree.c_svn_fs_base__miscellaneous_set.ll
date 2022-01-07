; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_svn_fs_base__miscellaneous_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_svn_fs_base__miscellaneous_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.miscellaneous_set_args = type { i8*, i8* }

@txn_body_miscellaneous_set = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_base__miscellaneous_set(i32* %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.miscellaneous_set_args, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = getelementptr inbounds %struct.miscellaneous_set_args, %struct.miscellaneous_set_args* %9, i32 0, i32 0
  store i8* %10, i8** %11, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = getelementptr inbounds %struct.miscellaneous_set_args, %struct.miscellaneous_set_args* %9, i32 0, i32 1
  store i8* %12, i8** %13, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* @txn_body_miscellaneous_set, align 4
  %16 = load i32, i32* @TRUE, align 4
  %17 = load i32*, i32** %8, align 8
  %18 = call i32* @svn_fs_base__retry_txn(i32* %14, i32 %15, %struct.miscellaneous_set_args* %9, i32 %16, i32* %17)
  ret i32* %18
}

declare dso_local i32* @svn_fs_base__retry_txn(i32*, i32, %struct.miscellaneous_set_args*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
