; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_tran.c_getfval.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_tran.c_getfval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@NUM = common dso_local global i32 0, align 4
@STR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"read value of\00", align 1
@donefld = common dso_local global i64 0, align 8
@donerec = common dso_local global i64 0, align 8
@CON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"getfval %p: %s = %g, t=%o\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getfval(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %3 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @NUM, align 4
  %7 = load i32, i32* @STR, align 4
  %8 = or i32 %6, %7
  %9 = and i32 %5, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %13 = call i32 @funnyvar(%struct.TYPE_7__* %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %16 = call i64 @isfld(%struct.TYPE_7__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load i64, i64* @donefld, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = call i32 (...) @fldbld()
  br label %33

23:                                               ; preds = %18, %14
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %25 = call i64 @isrec(%struct.TYPE_7__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i64, i64* @donerec, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = call i32 (...) @recbld()
  br label %32

32:                                               ; preds = %30, %27, %23
  br label %33

33:                                               ; preds = %32, %21
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %35 = call i32 @isnum(%struct.TYPE_7__* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %63, label %37

37:                                               ; preds = %33
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @atof(i32 %40)
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @is_number(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %37
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @CON, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %49
  %57 = load i32, i32* @NUM, align 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %56, %49, %37
  br label %63

63:                                               ; preds = %62, %33
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %65 = bitcast %struct.TYPE_7__* %64 to i8*
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @NN(i32 %68)
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = inttoptr i64 %76 to i8*
  %78 = call i32 @dprintf(i8* %77)
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  ret i32 %81
}

declare dso_local i32 @funnyvar(%struct.TYPE_7__*, i8*) #1

declare dso_local i64 @isfld(%struct.TYPE_7__*) #1

declare dso_local i32 @fldbld(...) #1

declare dso_local i64 @isrec(%struct.TYPE_7__*) #1

declare dso_local i32 @recbld(...) #1

declare dso_local i32 @isnum(%struct.TYPE_7__*) #1

declare dso_local i32 @atof(i32) #1

declare dso_local i64 @is_number(i32) #1

declare dso_local i32 @dprintf(i8*) #1

declare dso_local i32 @NN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
