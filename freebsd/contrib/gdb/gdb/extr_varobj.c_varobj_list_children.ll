; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_varobj_list_children.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_varobj_list_children.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varobj = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @varobj_list_children(%struct.varobj* %0, %struct.varobj*** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.varobj*, align 8
  %5 = alloca %struct.varobj***, align 8
  %6 = alloca %struct.varobj*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.varobj* %0, %struct.varobj** %4, align 8
  store %struct.varobj*** %1, %struct.varobj**** %5, align 8
  %9 = load %struct.varobj***, %struct.varobj**** %5, align 8
  %10 = icmp eq %struct.varobj*** %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %77

12:                                               ; preds = %2
  %13 = load %struct.varobj***, %struct.varobj**** %5, align 8
  store %struct.varobj** null, %struct.varobj*** %13, align 8
  %14 = load %struct.varobj*, %struct.varobj** %4, align 8
  %15 = getelementptr inbounds %struct.varobj, %struct.varobj* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = load %struct.varobj*, %struct.varobj** %4, align 8
  %20 = call i32 @number_of_children(%struct.varobj* %19)
  %21 = load %struct.varobj*, %struct.varobj** %4, align 8
  %22 = getelementptr inbounds %struct.varobj, %struct.varobj* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  br label %23

23:                                               ; preds = %18, %12
  %24 = load %struct.varobj*, %struct.varobj** %4, align 8
  %25 = getelementptr inbounds %struct.varobj, %struct.varobj* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 8
  %30 = trunc i64 %29 to i32
  %31 = call %struct.varobj** @xmalloc(i32 %30)
  %32 = load %struct.varobj***, %struct.varobj**** %5, align 8
  store %struct.varobj** %31, %struct.varobj*** %32, align 8
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %65, %23
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.varobj*, %struct.varobj** %4, align 8
  %36 = getelementptr inbounds %struct.varobj, %struct.varobj* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %68

39:                                               ; preds = %33
  %40 = load %struct.varobj***, %struct.varobj**** %5, align 8
  %41 = load %struct.varobj**, %struct.varobj*** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.varobj*, %struct.varobj** %41, i64 %43
  store %struct.varobj* null, %struct.varobj** %44, align 8
  %45 = load %struct.varobj*, %struct.varobj** %4, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i8* @name_of_child(%struct.varobj* %45, i32 %46)
  store i8* %47, i8** %7, align 8
  %48 = load %struct.varobj*, %struct.varobj** %4, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = call %struct.varobj* @child_exists(%struct.varobj* %48, i8* %49)
  store %struct.varobj* %50, %struct.varobj** %6, align 8
  %51 = load %struct.varobj*, %struct.varobj** %6, align 8
  %52 = icmp eq %struct.varobj* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %39
  %54 = load %struct.varobj*, %struct.varobj** %4, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i8*, i8** %7, align 8
  %57 = call %struct.varobj* @create_child(%struct.varobj* %54, i32 %55, i8* %56)
  store %struct.varobj* %57, %struct.varobj** %6, align 8
  br label %58

58:                                               ; preds = %53, %39
  %59 = load %struct.varobj*, %struct.varobj** %6, align 8
  %60 = load %struct.varobj***, %struct.varobj**** %5, align 8
  %61 = load %struct.varobj**, %struct.varobj*** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.varobj*, %struct.varobj** %61, i64 %63
  store %struct.varobj* %59, %struct.varobj** %64, align 8
  br label %65

65:                                               ; preds = %58
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %33

68:                                               ; preds = %33
  %69 = load %struct.varobj***, %struct.varobj**** %5, align 8
  %70 = load %struct.varobj**, %struct.varobj*** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.varobj*, %struct.varobj** %70, i64 %72
  store %struct.varobj* null, %struct.varobj** %73, align 8
  %74 = load %struct.varobj*, %struct.varobj** %4, align 8
  %75 = getelementptr inbounds %struct.varobj, %struct.varobj* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %68, %11
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @number_of_children(%struct.varobj*) #1

declare dso_local %struct.varobj** @xmalloc(i32) #1

declare dso_local i8* @name_of_child(%struct.varobj*, i32) #1

declare dso_local %struct.varobj* @child_exists(%struct.varobj*, i8*) #1

declare dso_local %struct.varobj* @create_child(%struct.varobj*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
