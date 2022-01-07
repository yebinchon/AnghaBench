; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_varobj_get_handle.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_varobj_get_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlist = type { %struct.varobj*, %struct.vlist* }
%struct.varobj = type { i32 }

@VAROBJ_TABLE_SIZE = common dso_local global i32 0, align 4
@varobj_table = common dso_local global %struct.vlist** null, align 8
@.str = private unnamed_addr constant [26 x i8] c"Variable object not found\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.varobj* @varobj_get_handle(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vlist*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %7 = load i8*, i8** %2, align 8
  store i8* %7, i8** %4, align 8
  br label %8

8:                                                ; preds = %23, %1
  %9 = load i8*, i8** %4, align 8
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = add i32 %14, 1
  store i32 %15, i32* %6, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = mul i32 %14, %18
  %20 = add i32 %13, %19
  %21 = load i32, i32* @VAROBJ_TABLE_SIZE, align 4
  %22 = urem i32 %20, %21
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %12
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %4, align 8
  br label %8

26:                                               ; preds = %8
  %27 = load %struct.vlist**, %struct.vlist*** @varobj_table, align 8
  %28 = load i32, i32* %5, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.vlist*, %struct.vlist** %27, i64 %29
  %31 = load %struct.vlist*, %struct.vlist** %30, align 8
  store %struct.vlist* %31, %struct.vlist** %3, align 8
  br label %32

32:                                               ; preds = %46, %26
  %33 = load %struct.vlist*, %struct.vlist** %3, align 8
  %34 = icmp ne %struct.vlist* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load %struct.vlist*, %struct.vlist** %3, align 8
  %37 = getelementptr inbounds %struct.vlist, %struct.vlist* %36, i32 0, i32 0
  %38 = load %struct.varobj*, %struct.varobj** %37, align 8
  %39 = getelementptr inbounds %struct.varobj, %struct.varobj* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %2, align 8
  %42 = call i64 @strcmp(i32 %40, i8* %41)
  %43 = icmp ne i64 %42, 0
  br label %44

44:                                               ; preds = %35, %32
  %45 = phi i1 [ false, %32 ], [ %43, %35 ]
  br i1 %45, label %46, label %50

46:                                               ; preds = %44
  %47 = load %struct.vlist*, %struct.vlist** %3, align 8
  %48 = getelementptr inbounds %struct.vlist, %struct.vlist* %47, i32 0, i32 1
  %49 = load %struct.vlist*, %struct.vlist** %48, align 8
  store %struct.vlist* %49, %struct.vlist** %3, align 8
  br label %32

50:                                               ; preds = %44
  %51 = load %struct.vlist*, %struct.vlist** %3, align 8
  %52 = icmp eq %struct.vlist* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = call i32 @error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %50
  %56 = load %struct.vlist*, %struct.vlist** %3, align 8
  %57 = getelementptr inbounds %struct.vlist, %struct.vlist* %56, i32 0, i32 0
  %58 = load %struct.varobj*, %struct.varobj** %57, align 8
  ret %struct.varobj* %58
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
