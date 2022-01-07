; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_varobj_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_varobj_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varobj = type { i32 }
%struct.cpstack = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"varobj_delete: assertion failed - mycount(=%d) <> 0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @varobj_delete(%struct.varobj* %0, i8*** %1, i32 %2) #0 {
  %4 = alloca %struct.varobj*, align 8
  %5 = alloca i8***, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cpstack*, align 8
  %10 = alloca i8**, align 8
  store %struct.varobj* %0, %struct.varobj** %4, align 8
  store i8*** %1, i8**** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.cpstack* null, %struct.cpstack** %9, align 8
  %11 = call i32 @cppush(%struct.cpstack** %9, i32* null)
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load %struct.varobj*, %struct.varobj** %4, align 8
  %16 = call i32 @delete_variable(%struct.cpstack** %9, %struct.varobj* %15, i32 1)
  store i32 %16, i32* %7, align 4
  br label %20

17:                                               ; preds = %3
  %18 = load %struct.varobj*, %struct.varobj** %4, align 8
  %19 = call i32 @delete_variable(%struct.cpstack** %9, %struct.varobj* %18, i32 0)
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i8***, i8**** %5, align 8
  %22 = icmp ne i8*** %21, null
  br i1 %22, label %23, label %63

23:                                               ; preds = %20
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 8
  %28 = trunc i64 %27 to i32
  %29 = call i8** @xmalloc(i32 %28)
  %30 = load i8***, i8**** %5, align 8
  store i8** %29, i8*** %30, align 8
  %31 = load i8***, i8**** %5, align 8
  %32 = load i8**, i8*** %31, align 8
  store i8** %32, i8*** %10, align 8
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %8, align 4
  %34 = call i8* @cppop(%struct.cpstack** %9)
  %35 = load i8**, i8*** %10, align 8
  store i8* %34, i8** %35, align 8
  br label %36

36:                                               ; preds = %45, %23
  %37 = load i8**, i8*** %10, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* %8, align 4
  %42 = icmp sgt i32 %41, 0
  br label %43

43:                                               ; preds = %40, %36
  %44 = phi i1 [ false, %36 ], [ %42, %40 ]
  br i1 %44, label %45, label %52

45:                                               ; preds = %43
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %8, align 4
  %48 = load i8**, i8*** %10, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i32 1
  store i8** %49, i8*** %10, align 8
  %50 = call i8* @cppop(%struct.cpstack** %9)
  %51 = load i8**, i8*** %10, align 8
  store i8* %50, i8** %51, align 8
  br label %36

52:                                               ; preds = %43
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %52
  %56 = load i8**, i8*** %10, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %55, %52
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @warning(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %59, %55
  br label %63

63:                                               ; preds = %62, %20
  %64 = load i32, i32* %7, align 4
  ret i32 %64
}

declare dso_local i32 @cppush(%struct.cpstack**, i32*) #1

declare dso_local i32 @delete_variable(%struct.cpstack**, %struct.varobj*, i32) #1

declare dso_local i8** @xmalloc(i32) #1

declare dso_local i8* @cppop(%struct.cpstack**) #1

declare dso_local i32 @warning(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
