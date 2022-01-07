; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valops.c_check_field_in.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valops.c_check_field_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.type*, i8*)* @check_field_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_field_in(%struct.type* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.type*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.type*, %struct.type** %4, align 8
  %11 = call i32 @TYPE_NFIELDS(%struct.type* %10)
  %12 = sub nsw i32 %11, 1
  store i32 %12, i32* %6, align 4
  br label %13

13:                                               ; preds = %31, %2
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.type*, %struct.type** %4, align 8
  %16 = call i32 @TYPE_N_BASECLASSES(%struct.type* %15)
  %17 = icmp sge i32 %14, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %13
  %19 = load %struct.type*, %struct.type** %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i8* @TYPE_FIELD_NAME(%struct.type* %19, i32 %20)
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load i8*, i8** %7, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = call i64 @strcmp_iw(i8* %25, i8* %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  br label %81

30:                                               ; preds = %24, %18
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %6, align 4
  br label %13

34:                                               ; preds = %13
  %35 = load i8*, i8** %5, align 8
  %36 = load %struct.type*, %struct.type** %4, align 8
  %37 = call i64 @destructor_name_p(i8* %35, %struct.type* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.type*, %struct.type** %4, align 8
  %41 = call i32 @get_destructor_fn_field(%struct.type* %40, i32* %8, i32* %9)
  store i32 %41, i32* %3, align 4
  br label %81

42:                                               ; preds = %34
  %43 = load %struct.type*, %struct.type** %4, align 8
  %44 = call i32 @TYPE_NFN_FIELDS(%struct.type* %43)
  %45 = sub nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %58, %42
  %47 = load i32, i32* %6, align 4
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %46
  %50 = load %struct.type*, %struct.type** %4, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i8* @TYPE_FN_FIELDLIST_NAME(%struct.type* %50, i32 %51)
  %53 = load i8*, i8** %5, align 8
  %54 = call i64 @strcmp_iw(i8* %52, i8* %53)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  store i32 1, i32* %3, align 4
  br label %81

57:                                               ; preds = %49
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %6, align 4
  br label %46

61:                                               ; preds = %46
  %62 = load %struct.type*, %struct.type** %4, align 8
  %63 = call i32 @TYPE_N_BASECLASSES(%struct.type* %62)
  %64 = sub nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %77, %61
  %66 = load i32, i32* %6, align 4
  %67 = icmp sge i32 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %65
  %69 = load %struct.type*, %struct.type** %4, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call %struct.type* @TYPE_BASECLASS(%struct.type* %69, i32 %70)
  %72 = load i8*, i8** %5, align 8
  %73 = call i32 @check_field_in(%struct.type* %71, i8* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  store i32 1, i32* %3, align 4
  br label %81

76:                                               ; preds = %68
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %6, align 4
  br label %65

80:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %75, %56, %39, %29
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @TYPE_NFIELDS(%struct.type*) #1

declare dso_local i32 @TYPE_N_BASECLASSES(%struct.type*) #1

declare dso_local i8* @TYPE_FIELD_NAME(%struct.type*, i32) #1

declare dso_local i64 @strcmp_iw(i8*, i8*) #1

declare dso_local i64 @destructor_name_p(i8*, %struct.type*) #1

declare dso_local i32 @get_destructor_fn_field(%struct.type*, i32*, i32*) #1

declare dso_local i32 @TYPE_NFN_FIELDS(%struct.type*) #1

declare dso_local i8* @TYPE_FN_FIELDLIST_NAME(%struct.type*, i32) #1

declare dso_local %struct.type* @TYPE_BASECLASS(%struct.type*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
