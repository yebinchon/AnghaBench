; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_delete_variable_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_delete_variable_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpstack = type { i32 }
%struct.varobj = type { i32*, i32*, %struct.varobj_child* }
%struct.varobj_child = type { %struct.varobj_child*, %struct.varobj* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpstack**, i32*, %struct.varobj*, i32, i32)* @delete_variable_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delete_variable_1(%struct.cpstack** %0, i32* %1, %struct.varobj* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.cpstack**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.varobj*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.varobj_child*, align 8
  %12 = alloca %struct.varobj_child*, align 8
  store %struct.cpstack** %0, %struct.cpstack*** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.varobj* %2, %struct.varobj** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.varobj*, %struct.varobj** %8, align 8
  %14 = getelementptr inbounds %struct.varobj, %struct.varobj* %13, i32 0, i32 2
  %15 = load %struct.varobj_child*, %struct.varobj_child** %14, align 8
  store %struct.varobj_child* %15, %struct.varobj_child** %11, align 8
  br label %16

16:                                               ; preds = %39, %5
  %17 = load %struct.varobj_child*, %struct.varobj_child** %11, align 8
  %18 = icmp ne %struct.varobj_child* %17, null
  br i1 %18, label %19, label %41

19:                                               ; preds = %16
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %19
  %23 = load %struct.varobj_child*, %struct.varobj_child** %11, align 8
  %24 = getelementptr inbounds %struct.varobj_child, %struct.varobj_child* %23, i32 0, i32 1
  %25 = load %struct.varobj*, %struct.varobj** %24, align 8
  %26 = getelementptr inbounds %struct.varobj, %struct.varobj* %25, i32 0, i32 1
  store i32* null, i32** %26, align 8
  br label %27

27:                                               ; preds = %22, %19
  %28 = load %struct.cpstack**, %struct.cpstack*** %6, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = load %struct.varobj_child*, %struct.varobj_child** %11, align 8
  %31 = getelementptr inbounds %struct.varobj_child, %struct.varobj_child* %30, i32 0, i32 1
  %32 = load %struct.varobj*, %struct.varobj** %31, align 8
  %33 = load i32, i32* %9, align 4
  call void @delete_variable_1(%struct.cpstack** %28, i32* %29, %struct.varobj* %32, i32 0, i32 %33)
  %34 = load %struct.varobj_child*, %struct.varobj_child** %11, align 8
  %35 = getelementptr inbounds %struct.varobj_child, %struct.varobj_child* %34, i32 0, i32 0
  %36 = load %struct.varobj_child*, %struct.varobj_child** %35, align 8
  store %struct.varobj_child* %36, %struct.varobj_child** %12, align 8
  %37 = load %struct.varobj_child*, %struct.varobj_child** %11, align 8
  %38 = call i32 @xfree(%struct.varobj_child* %37)
  br label %39

39:                                               ; preds = %27
  %40 = load %struct.varobj_child*, %struct.varobj_child** %12, align 8
  store %struct.varobj_child* %40, %struct.varobj_child** %11, align 8
  br label %16

41:                                               ; preds = %16
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %86

45:                                               ; preds = %41
  %46 = load %struct.varobj*, %struct.varobj** %8, align 8
  %47 = getelementptr inbounds %struct.varobj, %struct.varobj* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %61

50:                                               ; preds = %45
  %51 = load %struct.cpstack**, %struct.cpstack*** %6, align 8
  %52 = load %struct.varobj*, %struct.varobj** %8, align 8
  %53 = getelementptr inbounds %struct.varobj, %struct.varobj* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @xstrdup(i32* %54)
  %56 = call i32 @cppush(%struct.cpstack** %51, i32 %55)
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  %60 = load i32*, i32** %7, align 8
  store i32 %59, i32* %60, align 4
  br label %61

61:                                               ; preds = %50, %45
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %61
  %65 = load %struct.varobj*, %struct.varobj** %8, align 8
  %66 = getelementptr inbounds %struct.varobj, %struct.varobj* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = load %struct.varobj*, %struct.varobj** %8, align 8
  %71 = getelementptr inbounds %struct.varobj, %struct.varobj* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.varobj*, %struct.varobj** %8, align 8
  %74 = call i32 @remove_child_from_parent(i32* %72, %struct.varobj* %73)
  br label %75

75:                                               ; preds = %69, %64, %61
  %76 = load %struct.varobj*, %struct.varobj** %8, align 8
  %77 = getelementptr inbounds %struct.varobj, %struct.varobj* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load %struct.varobj*, %struct.varobj** %8, align 8
  %82 = call i32 @uninstall_variable(%struct.varobj* %81)
  br label %83

83:                                               ; preds = %80, %75
  %84 = load %struct.varobj*, %struct.varobj** %8, align 8
  %85 = call i32 @free_variable(%struct.varobj* %84)
  br label %86

86:                                               ; preds = %83, %44
  ret void
}

declare dso_local i32 @xfree(%struct.varobj_child*) #1

declare dso_local i32 @cppush(%struct.cpstack**, i32) #1

declare dso_local i32 @xstrdup(i32*) #1

declare dso_local i32 @remove_child_from_parent(i32*, %struct.varobj*) #1

declare dso_local i32 @uninstall_variable(%struct.varobj*) #1

declare dso_local i32 @free_variable(%struct.varobj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
