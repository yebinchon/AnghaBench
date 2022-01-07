; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgencode.c_compress_any_dname.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgencode.c_compress_any_dname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regional = type { i32 }
%struct.compress_tree_node = type { i32 }

@RETVAL_TRUNC = common dso_local global i32 0, align 4
@RETVAL_OUTMEM = common dso_local global i32 0, align 4
@RETVAL_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, %struct.regional*, %struct.compress_tree_node**)* @compress_any_dname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compress_any_dname(i32* %0, i32* %1, i32 %2, %struct.regional* %3, %struct.compress_tree_node** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.regional*, align 8
  %11 = alloca %struct.compress_tree_node**, align 8
  %12 = alloca %struct.compress_tree_node*, align 8
  %13 = alloca %struct.compress_tree_node**, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.regional* %3, %struct.regional** %10, align 8
  store %struct.compress_tree_node** %4, %struct.compress_tree_node*** %11, align 8
  store %struct.compress_tree_node** null, %struct.compress_tree_node*** %13, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = call i64 @sldns_buffer_position(i32* %15)
  store i64 %16, i64* %14, align 8
  %17 = load %struct.compress_tree_node**, %struct.compress_tree_node*** %11, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call %struct.compress_tree_node* @compress_tree_lookup(%struct.compress_tree_node** %17, i32* %18, i32 %19, %struct.compress_tree_node*** %13)
  store %struct.compress_tree_node* %20, %struct.compress_tree_node** %12, align 8
  %21 = icmp ne %struct.compress_tree_node* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %5
  %23 = load i32*, i32** %8, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.compress_tree_node*, %struct.compress_tree_node** %12, align 8
  %27 = call i32 @write_compressed_dname(i32* %23, i32* %24, i32 %25, %struct.compress_tree_node* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* @RETVAL_TRUNC, align 4
  store i32 %30, i32* %6, align 4
  br label %53

31:                                               ; preds = %22
  br label %40

32:                                               ; preds = %5
  %33 = load i32*, i32** %8, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @dname_buffer_write(i32* %33, i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @RETVAL_TRUNC, align 4
  store i32 %38, i32* %6, align 4
  br label %53

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39, %31
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i64, i64* %14, align 8
  %44 = load %struct.regional*, %struct.regional** %10, align 8
  %45 = load %struct.compress_tree_node*, %struct.compress_tree_node** %12, align 8
  %46 = load %struct.compress_tree_node**, %struct.compress_tree_node*** %13, align 8
  %47 = call i32 @compress_tree_store(i32* %41, i32 %42, i64 %43, %struct.regional* %44, %struct.compress_tree_node* %45, %struct.compress_tree_node** %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %40
  %50 = load i32, i32* @RETVAL_OUTMEM, align 4
  store i32 %50, i32* %6, align 4
  br label %53

51:                                               ; preds = %40
  %52 = load i32, i32* @RETVAL_OK, align 4
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %51, %49, %37, %29
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i64 @sldns_buffer_position(i32*) #1

declare dso_local %struct.compress_tree_node* @compress_tree_lookup(%struct.compress_tree_node**, i32*, i32, %struct.compress_tree_node***) #1

declare dso_local i32 @write_compressed_dname(i32*, i32*, i32, %struct.compress_tree_node*) #1

declare dso_local i32 @dname_buffer_write(i32*, i32*) #1

declare dso_local i32 @compress_tree_store(i32*, i32, i64, %struct.regional*, %struct.compress_tree_node*, %struct.compress_tree_node**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
