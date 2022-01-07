; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_value_of_root.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_value_of_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.varobj = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i64, %struct.varobj* }
%struct.TYPE_3__ = type { %struct.value* (%struct.varobj**)* }

@USE_SELECTED_FRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.value* (%struct.varobj**, i32*)* @value_of_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.value* @value_of_root(%struct.varobj** %0, i32* %1) #0 {
  %3 = alloca %struct.value*, align 8
  %4 = alloca %struct.varobj**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.varobj*, align 8
  %7 = alloca %struct.varobj*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.varobj** %0, %struct.varobj*** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.varobj**, %struct.varobj*** %4, align 8
  %11 = icmp eq %struct.varobj** %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store %struct.value* null, %struct.value** %3, align 8
  br label %95

13:                                               ; preds = %2
  %14 = load %struct.varobj**, %struct.varobj*** %4, align 8
  %15 = load %struct.varobj*, %struct.varobj** %14, align 8
  store %struct.varobj* %15, %struct.varobj** %6, align 8
  %16 = load %struct.varobj*, %struct.varobj** %6, align 8
  %17 = getelementptr inbounds %struct.varobj, %struct.varobj* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load %struct.varobj*, %struct.varobj** %19, align 8
  %21 = load %struct.varobj*, %struct.varobj** %6, align 8
  %22 = icmp ne %struct.varobj* %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  store %struct.value* null, %struct.value** %3, align 8
  br label %95

24:                                               ; preds = %13
  %25 = load %struct.varobj*, %struct.varobj** %6, align 8
  %26 = getelementptr inbounds %struct.varobj, %struct.varobj* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %83

31:                                               ; preds = %24
  %32 = load %struct.varobj*, %struct.varobj** %6, align 8
  %33 = call i8* @varobj_get_type(%struct.varobj* %32)
  store i8* %33, i8** %8, align 8
  %34 = load %struct.varobj*, %struct.varobj** %6, align 8
  %35 = getelementptr inbounds %struct.varobj, %struct.varobj* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @USE_SELECTED_FRAME, align 4
  %38 = call %struct.varobj* @varobj_create(i32* null, i32 %36, i32 0, i32 %37)
  store %struct.varobj* %38, %struct.varobj** %7, align 8
  %39 = load %struct.varobj*, %struct.varobj** %7, align 8
  %40 = icmp eq %struct.varobj* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  store %struct.value* null, %struct.value** %3, align 8
  br label %95

42:                                               ; preds = %31
  %43 = load %struct.varobj*, %struct.varobj** %7, align 8
  %44 = call i8* @varobj_get_type(%struct.varobj* %43)
  store i8* %44, i8** %9, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = call i64 @strcmp(i8* %45, i8* %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load %struct.varobj*, %struct.varobj** %7, align 8
  %51 = call i32 @varobj_delete(%struct.varobj* %50, i32* null, i32 0)
  %52 = load i32*, i32** %5, align 8
  store i32 0, i32* %52, align 4
  br label %82

53:                                               ; preds = %42
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %53
  %58 = load %struct.varobj*, %struct.varobj** %6, align 8
  %59 = getelementptr inbounds %struct.varobj, %struct.varobj* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.varobj*, %struct.varobj** %6, align 8
  %62 = getelementptr inbounds %struct.varobj, %struct.varobj* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @strlen(i32 %63)
  %65 = call i32 @savestring(i32 %60, i32 %64)
  %66 = load %struct.varobj*, %struct.varobj** %7, align 8
  %67 = getelementptr inbounds %struct.varobj, %struct.varobj* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 8
  %68 = load %struct.varobj*, %struct.varobj** %6, align 8
  %69 = call i32 @varobj_delete(%struct.varobj* %68, i32* null, i32 0)
  br label %74

70:                                               ; preds = %53
  %71 = call i32 (...) @varobj_gen_name()
  %72 = load %struct.varobj*, %struct.varobj** %7, align 8
  %73 = getelementptr inbounds %struct.varobj, %struct.varobj* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 8
  br label %74

74:                                               ; preds = %70, %57
  %75 = load %struct.varobj*, %struct.varobj** %7, align 8
  %76 = call i32 @install_variable(%struct.varobj* %75)
  %77 = load %struct.varobj*, %struct.varobj** %7, align 8
  %78 = load %struct.varobj**, %struct.varobj*** %4, align 8
  store %struct.varobj* %77, %struct.varobj** %78, align 8
  %79 = load %struct.varobj**, %struct.varobj*** %4, align 8
  %80 = load %struct.varobj*, %struct.varobj** %79, align 8
  store %struct.varobj* %80, %struct.varobj** %6, align 8
  %81 = load i32*, i32** %5, align 8
  store i32 1, i32* %81, align 4
  br label %82

82:                                               ; preds = %74, %49
  br label %85

83:                                               ; preds = %24
  %84 = load i32*, i32** %5, align 8
  store i32 0, i32* %84, align 4
  br label %85

85:                                               ; preds = %83, %82
  %86 = load %struct.varobj*, %struct.varobj** %6, align 8
  %87 = getelementptr inbounds %struct.varobj, %struct.varobj* %86, i32 0, i32 0
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load %struct.value* (%struct.varobj**)*, %struct.value* (%struct.varobj**)** %91, align 8
  %93 = load %struct.varobj**, %struct.varobj*** %4, align 8
  %94 = call %struct.value* %92(%struct.varobj** %93)
  store %struct.value* %94, %struct.value** %3, align 8
  br label %95

95:                                               ; preds = %85, %41, %23, %12
  %96 = load %struct.value*, %struct.value** %3, align 8
  ret %struct.value* %96
}

declare dso_local i8* @varobj_get_type(%struct.varobj*) #1

declare dso_local %struct.varobj* @varobj_create(i32*, i32, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @varobj_delete(%struct.varobj*, i32*, i32) #1

declare dso_local i32 @savestring(i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @varobj_gen_name(...) #1

declare dso_local i32 @install_variable(%struct.varobj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
