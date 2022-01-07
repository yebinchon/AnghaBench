; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgencode.c_write_compressed_dname.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgencode.c_write_compressed_dname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.compress_tree_node = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64*, i32, %struct.compress_tree_node*)* @write_compressed_dname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_compressed_dname(i32* %0, i64* %1, i32 %2, %struct.compress_tree_node* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.compress_tree_node*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.compress_tree_node* %3, %struct.compress_tree_node** %9, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.compress_tree_node*, %struct.compress_tree_node** %9, align 8
  %15 = getelementptr inbounds %struct.compress_tree_node, %struct.compress_tree_node* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sub nsw i32 %13, %16
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %28

20:                                               ; preds = %4
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @sldns_buffer_remaining(i32* %21)
  %23 = icmp slt i32 %22, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %68

25:                                               ; preds = %20
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @sldns_buffer_write_u8(i32* %26, i64 0)
  store i32 1, i32* %5, align 4
  br label %68

28:                                               ; preds = %4
  br label %29

29:                                               ; preds = %44, %28
  %30 = load i32, i32* %10, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %10, align 4
  %32 = icmp ne i32 %30, 0
  br i1 %32, label %33, label %55

33:                                               ; preds = %29
  %34 = load i64*, i64** %7, align 8
  %35 = getelementptr inbounds i64, i64* %34, i32 1
  store i64* %35, i64** %7, align 8
  %36 = load i64, i64* %34, align 8
  store i64 %36, i64* %11, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @sldns_buffer_remaining(i32* %37)
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* %11, align 8
  %41 = add i64 %40, 1
  %42 = icmp ult i64 %39, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %68

44:                                               ; preds = %33
  %45 = load i32*, i32** %6, align 8
  %46 = load i64, i64* %11, align 8
  %47 = call i32 @sldns_buffer_write_u8(i32* %45, i64 %46)
  %48 = load i32*, i32** %6, align 8
  %49 = load i64*, i64** %7, align 8
  %50 = load i64, i64* %11, align 8
  %51 = call i32 @sldns_buffer_write(i32* %48, i64* %49, i64 %50)
  %52 = load i64, i64* %11, align 8
  %53 = load i64*, i64** %7, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 %52
  store i64* %54, i64** %7, align 8
  br label %29

55:                                               ; preds = %29
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @sldns_buffer_remaining(i32* %56)
  %58 = icmp slt i32 %57, 2
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i32 0, i32* %5, align 4
  br label %68

60:                                               ; preds = %55
  %61 = load %struct.compress_tree_node*, %struct.compress_tree_node** %9, align 8
  %62 = getelementptr inbounds %struct.compress_tree_node, %struct.compress_tree_node* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @PTR_CREATE(i32 %63)
  store i32 %64, i32* %12, align 4
  %65 = load i32*, i32** %6, align 8
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @sldns_buffer_write_u16(i32* %65, i32 %66)
  store i32 1, i32* %5, align 4
  br label %68

68:                                               ; preds = %60, %59, %43, %25, %24
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @sldns_buffer_remaining(i32*) #1

declare dso_local i32 @sldns_buffer_write_u8(i32*, i64) #1

declare dso_local i32 @sldns_buffer_write(i32*, i64*, i64) #1

declare dso_local i32 @PTR_CREATE(i32) #1

declare dso_local i32 @sldns_buffer_write_u16(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
