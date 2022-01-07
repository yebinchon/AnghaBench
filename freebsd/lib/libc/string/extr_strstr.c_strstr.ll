; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/string/extr_strstr.c_strstr.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/string/extr_strstr.c_strstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @strstr(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 0
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  store i8* %11, i8** %3, align 8
  br label %75

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load i8, i8* %14, align 1
  %16 = call i8* @strchr(i8* %13, i8 signext %15)
  store i8* %16, i8** %4, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %12
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = load i8, i8* %21, align 1
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %19, %12
  %25 = load i8*, i8** %4, align 8
  store i8* %25, i8** %3, align 8
  br label %75

26:                                               ; preds = %19
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = load i8, i8* %28, align 1
  %30 = icmp ne i8 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  store i8* null, i8** %3, align 8
  br label %75

32:                                               ; preds = %26
  %33 = load i8*, i8** %5, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 2
  %35 = load i8, i8* %34, align 1
  %36 = icmp ne i8 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = load i8*, i8** %4, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = call i8* @twobyte_strstr(i8* %38, i8* %39)
  store i8* %40, i8** %3, align 8
  br label %75

41:                                               ; preds = %32
  %42 = load i8*, i8** %4, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 2
  %44 = load i8, i8* %43, align 1
  %45 = icmp ne i8 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  store i8* null, i8** %3, align 8
  br label %75

47:                                               ; preds = %41
  %48 = load i8*, i8** %5, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 3
  %50 = load i8, i8* %49, align 1
  %51 = icmp ne i8 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %47
  %53 = load i8*, i8** %4, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = call i8* @threebyte_strstr(i8* %53, i8* %54)
  store i8* %55, i8** %3, align 8
  br label %75

56:                                               ; preds = %47
  %57 = load i8*, i8** %4, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 3
  %59 = load i8, i8* %58, align 1
  %60 = icmp ne i8 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  store i8* null, i8** %3, align 8
  br label %75

62:                                               ; preds = %56
  %63 = load i8*, i8** %5, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 4
  %65 = load i8, i8* %64, align 1
  %66 = icmp ne i8 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %62
  %68 = load i8*, i8** %4, align 8
  %69 = load i8*, i8** %5, align 8
  %70 = call i8* @fourbyte_strstr(i8* %68, i8* %69)
  store i8* %70, i8** %3, align 8
  br label %75

71:                                               ; preds = %62
  %72 = load i8*, i8** %4, align 8
  %73 = load i8*, i8** %5, align 8
  %74 = call i8* @twoway_strstr(i8* %72, i8* %73)
  store i8* %74, i8** %3, align 8
  br label %75

75:                                               ; preds = %71, %67, %61, %52, %46, %37, %31, %24, %10
  %76 = load i8*, i8** %3, align 8
  ret i8* %76
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @twobyte_strstr(i8*, i8*) #1

declare dso_local i8* @threebyte_strstr(i8*, i8*) #1

declare dso_local i8* @fourbyte_strstr(i8*, i8*) #1

declare dso_local i8* @twoway_strstr(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
