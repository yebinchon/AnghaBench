; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_op_copy_txn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_op_copy_txn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.op_copy_baton = type { i32, i32, i32*, i32, i32, i32, i64 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.op_copy_baton*, i32*)* @op_copy_txn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @op_copy_txn(i32* %0, %struct.op_copy_baton* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.op_copy_baton*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.op_copy_baton* %1, %struct.op_copy_baton** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load %struct.op_copy_baton*, %struct.op_copy_baton** %6, align 8
  %11 = getelementptr inbounds %struct.op_copy_baton, %struct.op_copy_baton* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %9, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %3
  %15 = load %struct.op_copy_baton*, %struct.op_copy_baton** %6, align 8
  %16 = getelementptr inbounds %struct.op_copy_baton, %struct.op_copy_baton* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.op_copy_baton*, %struct.op_copy_baton** %6, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i32* @op_copy_txn(i32* %17, %struct.op_copy_baton* %18, i32* %19)
  %21 = load %struct.op_copy_baton*, %struct.op_copy_baton** %6, align 8
  %22 = getelementptr inbounds %struct.op_copy_baton, %struct.op_copy_baton* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @SVN_WC__DB_WITH_TXN(i32* %20, i32* %23)
  %25 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %25, i32** %4, align 8
  br label %58

26:                                               ; preds = %3
  %27 = load %struct.op_copy_baton*, %struct.op_copy_baton** %6, align 8
  %28 = getelementptr inbounds %struct.op_copy_baton, %struct.op_copy_baton* %27, i32 0, i32 6
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.op_copy_baton*, %struct.op_copy_baton** %6, align 8
  %33 = getelementptr inbounds %struct.op_copy_baton, %struct.op_copy_baton* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @relpath_depth(i32 %34)
  store i32 %35, i32* %8, align 4
  br label %37

36:                                               ; preds = %26
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %36, %31
  %38 = load %struct.op_copy_baton*, %struct.op_copy_baton** %6, align 8
  %39 = getelementptr inbounds %struct.op_copy_baton, %struct.op_copy_baton* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.op_copy_baton*, %struct.op_copy_baton** %6, align 8
  %42 = getelementptr inbounds %struct.op_copy_baton, %struct.op_copy_baton* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.op_copy_baton*, %struct.op_copy_baton** %6, align 8
  %45 = getelementptr inbounds %struct.op_copy_baton, %struct.op_copy_baton* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.op_copy_baton*, %struct.op_copy_baton** %6, align 8
  %48 = getelementptr inbounds %struct.op_copy_baton, %struct.op_copy_baton* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.op_copy_baton*, %struct.op_copy_baton** %6, align 8
  %51 = getelementptr inbounds %struct.op_copy_baton, %struct.op_copy_baton* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @db_op_copy(i32 %40, i32 %43, i32* %46, i32 %49, i32 %52, i32 %53, i32* %54)
  %56 = call i32 @SVN_ERR(i32 %55)
  %57 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %57, i32** %4, align 8
  br label %58

58:                                               ; preds = %37, %14
  %59 = load i32*, i32** %4, align 8
  ret i32* %59
}

declare dso_local i32 @SVN_WC__DB_WITH_TXN(i32*, i32*) #1

declare dso_local i32 @relpath_depth(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @db_op_copy(i32, i32, i32*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
