; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_bootinfo.c_bi_copyenv.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_bootinfo.c_bi_copyenv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.env_var = type { i8*, i8*, %struct.env_var* }

@environ = common dso_local global %struct.env_var* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bi_copyenv(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.env_var*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load %struct.env_var*, %struct.env_var** @environ, align 8
  store %struct.env_var* %4, %struct.env_var** %3, align 8
  br label %5

5:                                                ; preds = %53, %1
  %6 = load %struct.env_var*, %struct.env_var** %3, align 8
  %7 = icmp ne %struct.env_var* %6, null
  br i1 %7, label %8, label %57

8:                                                ; preds = %5
  %9 = load %struct.env_var*, %struct.env_var** %3, align 8
  %10 = getelementptr inbounds %struct.env_var, %struct.env_var* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = load i32, i32* %2, align 4
  %13 = load %struct.env_var*, %struct.env_var** %3, align 8
  %14 = getelementptr inbounds %struct.env_var, %struct.env_var* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @strlen(i8* %15)
  %17 = call i32 @i386_copyin(i8* %11, i32 %12, i32 %16)
  %18 = load %struct.env_var*, %struct.env_var** %3, align 8
  %19 = getelementptr inbounds %struct.env_var, %struct.env_var* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @strlen(i8* %20)
  %22 = load i32, i32* %2, align 4
  %23 = add nsw i32 %22, %21
  store i32 %23, i32* %2, align 4
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @i386_copyin(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %24, i32 1)
  %26 = load i32, i32* %2, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %2, align 4
  %28 = load %struct.env_var*, %struct.env_var** %3, align 8
  %29 = getelementptr inbounds %struct.env_var, %struct.env_var* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %48

32:                                               ; preds = %8
  %33 = load %struct.env_var*, %struct.env_var** %3, align 8
  %34 = getelementptr inbounds %struct.env_var, %struct.env_var* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = load i32, i32* %2, align 4
  %37 = load %struct.env_var*, %struct.env_var** %3, align 8
  %38 = getelementptr inbounds %struct.env_var, %struct.env_var* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @strlen(i8* %39)
  %41 = call i32 @i386_copyin(i8* %35, i32 %36, i32 %40)
  %42 = load %struct.env_var*, %struct.env_var** %3, align 8
  %43 = getelementptr inbounds %struct.env_var, %struct.env_var* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @strlen(i8* %44)
  %46 = load i32, i32* %2, align 4
  %47 = add nsw i32 %46, %45
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %32, %8
  %49 = load i32, i32* %2, align 4
  %50 = call i32 @i386_copyin(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 1)
  %51 = load i32, i32* %2, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %48
  %54 = load %struct.env_var*, %struct.env_var** %3, align 8
  %55 = getelementptr inbounds %struct.env_var, %struct.env_var* %54, i32 0, i32 2
  %56 = load %struct.env_var*, %struct.env_var** %55, align 8
  store %struct.env_var* %56, %struct.env_var** %3, align 8
  br label %5

57:                                               ; preds = %5
  %58 = load i32, i32* %2, align 4
  %59 = call i32 @i386_copyin(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 1)
  %60 = load i32, i32* %2, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %2, align 4
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @i386_copyin(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
