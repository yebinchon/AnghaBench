; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_isoent_remove_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_isoent_remove_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isoent = type { i32, %struct.TYPE_4__, %struct.isoent*, i64, %struct.TYPE_3__, %struct.isoent* }
%struct.TYPE_4__ = type { i32, %struct.isoent**, %struct.isoent* }
%struct.TYPE_3__ = type { i32, %struct.isoent**, %struct.isoent* }
%struct.archive_rb_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isoent*, %struct.isoent*)* @isoent_remove_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isoent_remove_child(%struct.isoent* %0, %struct.isoent* %1) #0 {
  %3 = alloca %struct.isoent*, align 8
  %4 = alloca %struct.isoent*, align 8
  %5 = alloca %struct.isoent*, align 8
  store %struct.isoent* %0, %struct.isoent** %3, align 8
  store %struct.isoent* %1, %struct.isoent** %4, align 8
  %6 = load %struct.isoent*, %struct.isoent** %3, align 8
  %7 = getelementptr inbounds %struct.isoent, %struct.isoent* %6, i32 0, i32 4
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  %9 = load %struct.isoent*, %struct.isoent** %8, align 8
  store %struct.isoent* %9, %struct.isoent** %5, align 8
  br label %10

10:                                               ; preds = %16, %2
  %11 = load %struct.isoent*, %struct.isoent** %5, align 8
  %12 = getelementptr inbounds %struct.isoent, %struct.isoent* %11, i32 0, i32 5
  %13 = load %struct.isoent*, %struct.isoent** %12, align 8
  %14 = load %struct.isoent*, %struct.isoent** %4, align 8
  %15 = icmp ne %struct.isoent* %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = load %struct.isoent*, %struct.isoent** %5, align 8
  %18 = getelementptr inbounds %struct.isoent, %struct.isoent* %17, i32 0, i32 5
  %19 = load %struct.isoent*, %struct.isoent** %18, align 8
  store %struct.isoent* %19, %struct.isoent** %5, align 8
  br label %10

20:                                               ; preds = %10
  %21 = load %struct.isoent*, %struct.isoent** %5, align 8
  %22 = getelementptr inbounds %struct.isoent, %struct.isoent* %21, i32 0, i32 5
  %23 = load %struct.isoent*, %struct.isoent** %22, align 8
  %24 = getelementptr inbounds %struct.isoent, %struct.isoent* %23, i32 0, i32 5
  %25 = load %struct.isoent*, %struct.isoent** %24, align 8
  %26 = load %struct.isoent*, %struct.isoent** %5, align 8
  %27 = getelementptr inbounds %struct.isoent, %struct.isoent* %26, i32 0, i32 5
  store %struct.isoent* %25, %struct.isoent** %27, align 8
  %28 = icmp eq %struct.isoent* %25, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %20
  %30 = load %struct.isoent*, %struct.isoent** %5, align 8
  %31 = getelementptr inbounds %struct.isoent, %struct.isoent* %30, i32 0, i32 5
  %32 = load %struct.isoent*, %struct.isoent** %3, align 8
  %33 = getelementptr inbounds %struct.isoent, %struct.isoent* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  store %struct.isoent** %31, %struct.isoent*** %34, align 8
  br label %35

35:                                               ; preds = %29, %20
  %36 = load %struct.isoent*, %struct.isoent** %3, align 8
  %37 = getelementptr inbounds %struct.isoent, %struct.isoent* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %38, align 8
  %41 = load %struct.isoent*, %struct.isoent** %4, align 8
  %42 = getelementptr inbounds %struct.isoent, %struct.isoent* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %81

45:                                               ; preds = %35
  %46 = load %struct.isoent*, %struct.isoent** %3, align 8
  %47 = getelementptr inbounds %struct.isoent, %struct.isoent* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  %49 = load %struct.isoent*, %struct.isoent** %48, align 8
  store %struct.isoent* %49, %struct.isoent** %5, align 8
  br label %50

50:                                               ; preds = %56, %45
  %51 = load %struct.isoent*, %struct.isoent** %5, align 8
  %52 = getelementptr inbounds %struct.isoent, %struct.isoent* %51, i32 0, i32 2
  %53 = load %struct.isoent*, %struct.isoent** %52, align 8
  %54 = load %struct.isoent*, %struct.isoent** %4, align 8
  %55 = icmp ne %struct.isoent* %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load %struct.isoent*, %struct.isoent** %5, align 8
  %58 = getelementptr inbounds %struct.isoent, %struct.isoent* %57, i32 0, i32 2
  %59 = load %struct.isoent*, %struct.isoent** %58, align 8
  store %struct.isoent* %59, %struct.isoent** %5, align 8
  br label %50

60:                                               ; preds = %50
  %61 = load %struct.isoent*, %struct.isoent** %5, align 8
  %62 = getelementptr inbounds %struct.isoent, %struct.isoent* %61, i32 0, i32 2
  %63 = load %struct.isoent*, %struct.isoent** %62, align 8
  %64 = getelementptr inbounds %struct.isoent, %struct.isoent* %63, i32 0, i32 2
  %65 = load %struct.isoent*, %struct.isoent** %64, align 8
  %66 = load %struct.isoent*, %struct.isoent** %5, align 8
  %67 = getelementptr inbounds %struct.isoent, %struct.isoent* %66, i32 0, i32 2
  store %struct.isoent* %65, %struct.isoent** %67, align 8
  %68 = icmp eq %struct.isoent* %65, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %60
  %70 = load %struct.isoent*, %struct.isoent** %5, align 8
  %71 = getelementptr inbounds %struct.isoent, %struct.isoent* %70, i32 0, i32 2
  %72 = load %struct.isoent*, %struct.isoent** %3, align 8
  %73 = getelementptr inbounds %struct.isoent, %struct.isoent* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  store %struct.isoent** %71, %struct.isoent*** %74, align 8
  br label %75

75:                                               ; preds = %69, %60
  %76 = load %struct.isoent*, %struct.isoent** %3, align 8
  %77 = getelementptr inbounds %struct.isoent, %struct.isoent* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %78, align 8
  br label %81

81:                                               ; preds = %75, %35
  %82 = load %struct.isoent*, %struct.isoent** %3, align 8
  %83 = getelementptr inbounds %struct.isoent, %struct.isoent* %82, i32 0, i32 0
  %84 = load %struct.isoent*, %struct.isoent** %4, align 8
  %85 = bitcast %struct.isoent* %84 to %struct.archive_rb_node*
  %86 = call i32 @__archive_rb_tree_remove_node(i32* %83, %struct.archive_rb_node* %85)
  ret void
}

declare dso_local i32 @__archive_rb_tree_remove_node(i32*, %struct.archive_rb_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
