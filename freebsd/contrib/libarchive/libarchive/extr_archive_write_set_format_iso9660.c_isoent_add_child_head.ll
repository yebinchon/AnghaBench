; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_isoent_add_child_head.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_isoent_add_child_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isoent = type { %struct.isoent*, %struct.isoent*, %struct.TYPE_4__, i64, %struct.TYPE_3__, %struct.isoent*, i32 }
%struct.TYPE_4__ = type { i32, %struct.isoent*, %struct.isoent** }
%struct.TYPE_3__ = type { i32, %struct.isoent*, %struct.isoent** }
%struct.archive_rb_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isoent*, %struct.isoent*)* @isoent_add_child_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isoent_add_child_head(%struct.isoent* %0, %struct.isoent* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.isoent*, align 8
  %5 = alloca %struct.isoent*, align 8
  store %struct.isoent* %0, %struct.isoent** %4, align 8
  store %struct.isoent* %1, %struct.isoent** %5, align 8
  %6 = load %struct.isoent*, %struct.isoent** %4, align 8
  %7 = getelementptr inbounds %struct.isoent, %struct.isoent* %6, i32 0, i32 6
  %8 = load %struct.isoent*, %struct.isoent** %5, align 8
  %9 = bitcast %struct.isoent* %8 to %struct.archive_rb_node*
  %10 = call i32 @__archive_rb_tree_insert_node(i32* %7, %struct.archive_rb_node* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %75

13:                                               ; preds = %2
  %14 = load %struct.isoent*, %struct.isoent** %4, align 8
  %15 = getelementptr inbounds %struct.isoent, %struct.isoent* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load %struct.isoent*, %struct.isoent** %16, align 8
  %18 = load %struct.isoent*, %struct.isoent** %5, align 8
  %19 = getelementptr inbounds %struct.isoent, %struct.isoent* %18, i32 0, i32 5
  store %struct.isoent* %17, %struct.isoent** %19, align 8
  %20 = icmp eq %struct.isoent* %17, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %13
  %22 = load %struct.isoent*, %struct.isoent** %5, align 8
  %23 = getelementptr inbounds %struct.isoent, %struct.isoent* %22, i32 0, i32 5
  %24 = load %struct.isoent*, %struct.isoent** %4, align 8
  %25 = getelementptr inbounds %struct.isoent, %struct.isoent* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  store %struct.isoent** %23, %struct.isoent*** %26, align 8
  br label %27

27:                                               ; preds = %21, %13
  %28 = load %struct.isoent*, %struct.isoent** %5, align 8
  %29 = load %struct.isoent*, %struct.isoent** %4, align 8
  %30 = getelementptr inbounds %struct.isoent, %struct.isoent* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store %struct.isoent* %28, %struct.isoent** %31, align 8
  %32 = load %struct.isoent*, %struct.isoent** %4, align 8
  %33 = getelementptr inbounds %struct.isoent, %struct.isoent* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 8
  %37 = load %struct.isoent*, %struct.isoent** %4, align 8
  %38 = load %struct.isoent*, %struct.isoent** %5, align 8
  %39 = getelementptr inbounds %struct.isoent, %struct.isoent* %38, i32 0, i32 1
  store %struct.isoent* %37, %struct.isoent** %39, align 8
  %40 = load %struct.isoent*, %struct.isoent** %5, align 8
  %41 = getelementptr inbounds %struct.isoent, %struct.isoent* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %71

44:                                               ; preds = %27
  %45 = load %struct.isoent*, %struct.isoent** %4, align 8
  %46 = getelementptr inbounds %struct.isoent, %struct.isoent* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load %struct.isoent*, %struct.isoent** %47, align 8
  %49 = load %struct.isoent*, %struct.isoent** %5, align 8
  %50 = getelementptr inbounds %struct.isoent, %struct.isoent* %49, i32 0, i32 0
  store %struct.isoent* %48, %struct.isoent** %50, align 8
  %51 = icmp eq %struct.isoent* %48, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %44
  %53 = load %struct.isoent*, %struct.isoent** %5, align 8
  %54 = getelementptr inbounds %struct.isoent, %struct.isoent* %53, i32 0, i32 0
  %55 = load %struct.isoent*, %struct.isoent** %4, align 8
  %56 = getelementptr inbounds %struct.isoent, %struct.isoent* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  store %struct.isoent** %54, %struct.isoent*** %57, align 8
  br label %58

58:                                               ; preds = %52, %44
  %59 = load %struct.isoent*, %struct.isoent** %5, align 8
  %60 = load %struct.isoent*, %struct.isoent** %4, align 8
  %61 = getelementptr inbounds %struct.isoent, %struct.isoent* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  store %struct.isoent* %59, %struct.isoent** %62, align 8
  %63 = load %struct.isoent*, %struct.isoent** %4, align 8
  %64 = getelementptr inbounds %struct.isoent, %struct.isoent* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 8
  %68 = load %struct.isoent*, %struct.isoent** %4, align 8
  %69 = load %struct.isoent*, %struct.isoent** %5, align 8
  %70 = getelementptr inbounds %struct.isoent, %struct.isoent* %69, i32 0, i32 1
  store %struct.isoent* %68, %struct.isoent** %70, align 8
  br label %74

71:                                               ; preds = %27
  %72 = load %struct.isoent*, %struct.isoent** %5, align 8
  %73 = getelementptr inbounds %struct.isoent, %struct.isoent* %72, i32 0, i32 0
  store %struct.isoent* null, %struct.isoent** %73, align 8
  br label %74

74:                                               ; preds = %71, %58
  store i32 1, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %12
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @__archive_rb_tree_insert_node(i32*, %struct.archive_rb_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
