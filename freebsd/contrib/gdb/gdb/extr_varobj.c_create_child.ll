; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_create_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_create_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varobj = type { i8*, i32, i32, i8*, i32, i32, %struct.varobj*, i32* }

@.str = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.varobj* (%struct.varobj*, i32, i8*)* @create_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.varobj* @create_child(%struct.varobj* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.varobj*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.varobj*, align 8
  %8 = alloca i8*, align 8
  store %struct.varobj* %0, %struct.varobj** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = call %struct.varobj* (...) @new_variable()
  store %struct.varobj* %9, %struct.varobj** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load %struct.varobj*, %struct.varobj** %7, align 8
  %12 = getelementptr inbounds %struct.varobj, %struct.varobj* %11, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.varobj*, %struct.varobj** %7, align 8
  %15 = getelementptr inbounds %struct.varobj, %struct.varobj* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  %16 = load %struct.varobj*, %struct.varobj** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32* @value_of_child(%struct.varobj* %16, i32 %17)
  %19 = load %struct.varobj*, %struct.varobj** %7, align 8
  %20 = getelementptr inbounds %struct.varobj, %struct.varobj* %19, i32 0, i32 7
  store i32* %18, i32** %20, align 8
  %21 = load %struct.varobj*, %struct.varobj** %7, align 8
  %22 = call i32 @CPLUS_FAKE_CHILD(%struct.varobj* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %3
  %25 = load %struct.varobj*, %struct.varobj** %7, align 8
  %26 = getelementptr inbounds %struct.varobj, %struct.varobj* %25, i32 0, i32 7
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %24, %3
  %30 = load %struct.varobj*, %struct.varobj** %4, align 8
  %31 = getelementptr inbounds %struct.varobj, %struct.varobj* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29, %24
  %35 = load %struct.varobj*, %struct.varobj** %7, align 8
  %36 = getelementptr inbounds %struct.varobj, %struct.varobj* %35, i32 0, i32 2
  store i32 1, i32* %36, align 4
  br label %37

37:                                               ; preds = %34, %29
  %38 = load %struct.varobj*, %struct.varobj** %4, align 8
  %39 = load %struct.varobj*, %struct.varobj** %7, align 8
  %40 = getelementptr inbounds %struct.varobj, %struct.varobj* %39, i32 0, i32 6
  store %struct.varobj* %38, %struct.varobj** %40, align 8
  %41 = load %struct.varobj*, %struct.varobj** %4, align 8
  %42 = getelementptr inbounds %struct.varobj, %struct.varobj* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.varobj*, %struct.varobj** %7, align 8
  %45 = getelementptr inbounds %struct.varobj, %struct.varobj* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 4
  %46 = load %struct.varobj*, %struct.varobj** %4, align 8
  %47 = getelementptr inbounds %struct.varobj, %struct.varobj* %46, i32 0, i32 3
  %48 = load i8*, i8** %47, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @xasprintf(i8** %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %48, i8* %49)
  %51 = load i8*, i8** %8, align 8
  %52 = load %struct.varobj*, %struct.varobj** %7, align 8
  %53 = getelementptr inbounds %struct.varobj, %struct.varobj* %52, i32 0, i32 3
  store i8* %51, i8** %53, align 8
  %54 = load %struct.varobj*, %struct.varobj** %7, align 8
  %55 = call i32 @install_variable(%struct.varobj* %54)
  %56 = load %struct.varobj*, %struct.varobj** %4, align 8
  %57 = load %struct.varobj*, %struct.varobj** %7, align 8
  %58 = call i32 @save_child_in_parent(%struct.varobj* %56, %struct.varobj* %57)
  %59 = load %struct.varobj*, %struct.varobj** %7, align 8
  %60 = call i32 @type_of_child(%struct.varobj* %59)
  %61 = load %struct.varobj*, %struct.varobj** %7, align 8
  %62 = getelementptr inbounds %struct.varobj, %struct.varobj* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 8
  %63 = load %struct.varobj*, %struct.varobj** %7, align 8
  ret %struct.varobj* %63
}

declare dso_local %struct.varobj* @new_variable(...) #1

declare dso_local i32* @value_of_child(%struct.varobj*, i32) #1

declare dso_local i32 @CPLUS_FAKE_CHILD(%struct.varobj*) #1

declare dso_local i32 @xasprintf(i8**, i8*, i8*, i8*) #1

declare dso_local i32 @install_variable(%struct.varobj*) #1

declare dso_local i32 @save_child_in_parent(%struct.varobj*, %struct.varobj*) #1

declare dso_local i32 @type_of_child(%struct.varobj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
