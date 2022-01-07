; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valops.c_destructor_name_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valops.c_destructor_name_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"name of destructor must equal name of class\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @destructor_name_p(i8* %0, %struct.type* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.type*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.type* %1, %struct.type** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 126
  br i1 %13, label %14, label %48

14:                                               ; preds = %2
  %15 = load %struct.type*, %struct.type** %5, align 8
  %16 = call i8* @type_name_no_tag(%struct.type* %15)
  store i8* %16, i8** %6, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i8* @strchr(i8* %17, i8 signext 60)
  store i8* %18, i8** %7, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @strlen(i8* %22)
  store i32 %23, i32* %8, align 4
  br label %31

24:                                               ; preds = %14
  %25 = load i8*, i8** %7, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = ptrtoint i8* %25 to i64
  %28 = ptrtoint i8* %26 to i64
  %29 = sub i64 %27, %28
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %24, %21
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = call i32 @strlen(i8* %33)
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %44, label %37

37:                                               ; preds = %31
  %38 = load i8*, i8** %6, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i32, i32* %8, align 4
  %42 = call i64 @strncmp(i8* %38, i8* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37, %31
  %45 = call i32 @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %47

46:                                               ; preds = %37
  store i32 1, i32* %3, align 4
  br label %49

47:                                               ; preds = %44
  br label %48

48:                                               ; preds = %47, %2
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %46
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i8* @type_name_no_tag(%struct.type*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
