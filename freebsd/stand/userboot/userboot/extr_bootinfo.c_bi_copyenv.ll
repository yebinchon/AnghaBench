; ModuleID = '/home/carl/AnghaBench/freebsd/stand/userboot/userboot/extr_bootinfo.c_bi_copyenv.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/userboot/userboot/extr_bootinfo.c_bi_copyenv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.env_var = type { i8*, i8*, %struct.env_var* }

@environ = common dso_local global %struct.env_var* null, align 8
@copyin = common dso_local global i32 0, align 4
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

5:                                                ; preds = %57, %1
  %6 = load %struct.env_var*, %struct.env_var** %3, align 8
  %7 = icmp ne %struct.env_var* %6, null
  br i1 %7, label %8, label %61

8:                                                ; preds = %5
  %9 = load i32, i32* @copyin, align 4
  %10 = load %struct.env_var*, %struct.env_var** %3, align 8
  %11 = getelementptr inbounds %struct.env_var, %struct.env_var* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = load i32, i32* %2, align 4
  %14 = load %struct.env_var*, %struct.env_var** %3, align 8
  %15 = getelementptr inbounds %struct.env_var, %struct.env_var* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @strlen(i8* %16)
  %18 = call i32 @CALLBACK(i32 %9, i8* %12, i32 %13, i32 %17)
  %19 = load %struct.env_var*, %struct.env_var** %3, align 8
  %20 = getelementptr inbounds %struct.env_var, %struct.env_var* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @strlen(i8* %21)
  %23 = load i32, i32* %2, align 4
  %24 = add nsw i32 %23, %22
  store i32 %24, i32* %2, align 4
  %25 = load i32, i32* @copyin, align 4
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @CALLBACK(i32 %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %26, i32 1)
  %28 = load i32, i32* %2, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %2, align 4
  %30 = load %struct.env_var*, %struct.env_var** %3, align 8
  %31 = getelementptr inbounds %struct.env_var, %struct.env_var* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %51

34:                                               ; preds = %8
  %35 = load i32, i32* @copyin, align 4
  %36 = load %struct.env_var*, %struct.env_var** %3, align 8
  %37 = getelementptr inbounds %struct.env_var, %struct.env_var* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = load i32, i32* %2, align 4
  %40 = load %struct.env_var*, %struct.env_var** %3, align 8
  %41 = getelementptr inbounds %struct.env_var, %struct.env_var* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @strlen(i8* %42)
  %44 = call i32 @CALLBACK(i32 %35, i8* %38, i32 %39, i32 %43)
  %45 = load %struct.env_var*, %struct.env_var** %3, align 8
  %46 = getelementptr inbounds %struct.env_var, %struct.env_var* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @strlen(i8* %47)
  %49 = load i32, i32* %2, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %34, %8
  %52 = load i32, i32* @copyin, align 4
  %53 = load i32, i32* %2, align 4
  %54 = call i32 @CALLBACK(i32 %52, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 1)
  %55 = load i32, i32* %2, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %51
  %58 = load %struct.env_var*, %struct.env_var** %3, align 8
  %59 = getelementptr inbounds %struct.env_var, %struct.env_var* %58, i32 0, i32 2
  %60 = load %struct.env_var*, %struct.env_var** %59, align 8
  store %struct.env_var* %60, %struct.env_var** %3, align 8
  br label %5

61:                                               ; preds = %5
  %62 = load i32, i32* @copyin, align 4
  %63 = load i32, i32* %2, align 4
  %64 = call i32 @CALLBACK(i32 %62, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %63, i32 1)
  %65 = load i32, i32* %2, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %2, align 4
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @CALLBACK(i32, i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
