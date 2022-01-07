; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_varobj_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_varobj_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varobj_root = type { %struct.varobj_root*, %struct.varobj* }
%struct.varobj = type { i32 }

@rootcount = common dso_local global i32 0, align 4
@rootlist = common dso_local global %struct.varobj_root* null, align 8
@.str = private unnamed_addr constant [65 x i8] c"varobj_list: assertion failed - wrong tally of root vars (%d:%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @varobj_list(%struct.varobj*** %0) #0 {
  %2 = alloca %struct.varobj***, align 8
  %3 = alloca %struct.varobj**, align 8
  %4 = alloca %struct.varobj_root*, align 8
  %5 = alloca i32, align 4
  store %struct.varobj*** %0, %struct.varobj**** %2, align 8
  %6 = load i32, i32* @rootcount, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* @rootcount, align 4
  %8 = add nsw i32 %7, 1
  %9 = sext i32 %8 to i64
  %10 = mul i64 %9, 8
  %11 = trunc i64 %10 to i32
  %12 = call %struct.varobj** @xmalloc(i32 %11)
  %13 = load %struct.varobj***, %struct.varobj**** %2, align 8
  store %struct.varobj** %12, %struct.varobj*** %13, align 8
  %14 = load %struct.varobj***, %struct.varobj**** %2, align 8
  %15 = load %struct.varobj**, %struct.varobj*** %14, align 8
  store %struct.varobj** %15, %struct.varobj*** %3, align 8
  %16 = load %struct.varobj_root*, %struct.varobj_root** @rootlist, align 8
  store %struct.varobj_root* %16, %struct.varobj_root** %4, align 8
  br label %17

17:                                               ; preds = %25, %1
  %18 = load %struct.varobj_root*, %struct.varobj_root** %4, align 8
  %19 = icmp ne %struct.varobj_root* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* %5, align 4
  %22 = icmp sgt i32 %21, 0
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi i1 [ false, %17 ], [ %22, %20 ]
  br i1 %24, label %25, label %37

25:                                               ; preds = %23
  %26 = load %struct.varobj_root*, %struct.varobj_root** %4, align 8
  %27 = getelementptr inbounds %struct.varobj_root, %struct.varobj_root* %26, i32 0, i32 1
  %28 = load %struct.varobj*, %struct.varobj** %27, align 8
  %29 = load %struct.varobj**, %struct.varobj*** %3, align 8
  store %struct.varobj* %28, %struct.varobj** %29, align 8
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %5, align 4
  %32 = load %struct.varobj**, %struct.varobj*** %3, align 8
  %33 = getelementptr inbounds %struct.varobj*, %struct.varobj** %32, i32 1
  store %struct.varobj** %33, %struct.varobj*** %3, align 8
  %34 = load %struct.varobj_root*, %struct.varobj_root** %4, align 8
  %35 = getelementptr inbounds %struct.varobj_root, %struct.varobj_root* %34, i32 0, i32 0
  %36 = load %struct.varobj_root*, %struct.varobj_root** %35, align 8
  store %struct.varobj_root* %36, %struct.varobj_root** %4, align 8
  br label %17

37:                                               ; preds = %23
  %38 = load %struct.varobj**, %struct.varobj*** %3, align 8
  store %struct.varobj* null, %struct.varobj** %38, align 8
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load %struct.varobj_root*, %struct.varobj_root** %4, align 8
  %43 = icmp ne %struct.varobj_root* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %41, %37
  %45 = load i32, i32* @rootcount, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @warning(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %44, %41
  %49 = load i32, i32* @rootcount, align 4
  ret i32 %49
}

declare dso_local %struct.varobj** @xmalloc(i32) #1

declare dso_local i32 @warning(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
