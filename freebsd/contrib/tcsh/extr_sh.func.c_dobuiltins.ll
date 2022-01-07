; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.func.c_dobuiltins.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.func.c_dobuiltins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.biltins = type { i32 }
%struct.command = type opaque

@lbuffed = common dso_local global i64 0, align 8
@lbuffed_cleanup = common dso_local global i32 0, align 4
@bfunc = common dso_local global %struct.biltins* null, align 8
@nbfunc = common dso_local global i64 0, align 8
@TermH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@Tty_raw_mode = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dobuiltins(i32** %0, %struct.command* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca %struct.command*, align 8
  %5 = alloca %struct.biltins*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32** %0, i32*** %3, align 8
  store %struct.command* %1, %struct.command** %4, align 8
  %12 = load %struct.command*, %struct.command** %4, align 8
  %13 = bitcast %struct.command* %12 to i32**
  %14 = call i32 @USE(i32** %13)
  %15 = load i32**, i32*** %3, align 8
  %16 = call i32 @USE(i32** %15)
  store i64 0, i64* @lbuffed, align 8
  %17 = load i32, i32* @lbuffed_cleanup, align 4
  %18 = call i32 @cleanup_push(i64* @lbuffed, i32 %17)
  store i32 0, i32* %11, align 4
  %19 = load %struct.biltins*, %struct.biltins** @bfunc, align 8
  store %struct.biltins* %19, %struct.biltins** %5, align 8
  br label %20

20:                                               ; preds = %33, %2
  %21 = load %struct.biltins*, %struct.biltins** %5, align 8
  %22 = load %struct.biltins*, %struct.biltins** @bfunc, align 8
  %23 = load i64, i64* @nbfunc, align 8
  %24 = getelementptr inbounds %struct.biltins, %struct.biltins* %22, i64 %23
  %25 = icmp ult %struct.biltins* %21, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %20
  %27 = load i32, i32* %11, align 4
  %28 = load %struct.biltins*, %struct.biltins** %5, align 8
  %29 = getelementptr inbounds %struct.biltins, %struct.biltins* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @strlen(i32 %30)
  %32 = call i32 @max(i32 %27, i32 %31)
  store i32 %32, i32* %11, align 4
  br label %33

33:                                               ; preds = %26
  %34 = load %struct.biltins*, %struct.biltins** %5, align 8
  %35 = getelementptr inbounds %struct.biltins, %struct.biltins* %34, i32 1
  store %struct.biltins* %35, %struct.biltins** %5, align 8
  br label %20

36:                                               ; preds = %20
  %37 = load i32, i32* %11, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* @TermH, align 4
  %40 = add nsw i32 %39, 1
  %41 = load i32, i32* %11, align 4
  %42 = udiv i32 %40, %41
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %36
  store i32 1, i32* %8, align 4
  br label %46

46:                                               ; preds = %45, %36
  %47 = load i64, i64* @nbfunc, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = add i64 %47, %50
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = udiv i64 %51, %53
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %9, align 4
  %56 = load %struct.biltins*, %struct.biltins** @bfunc, align 8
  store %struct.biltins* %56, %struct.biltins** %5, align 8
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %116, %46
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %119

61:                                               ; preds = %57
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %100, %61
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %103

66:                                               ; preds = %62
  %67 = load %struct.biltins*, %struct.biltins** %5, align 8
  %68 = load %struct.biltins*, %struct.biltins** @bfunc, align 8
  %69 = load i64, i64* @nbfunc, align 8
  %70 = getelementptr inbounds %struct.biltins, %struct.biltins* %68, i64 %69
  %71 = icmp ult %struct.biltins* %67, %70
  br i1 %71, label %72, label %99

72:                                               ; preds = %66
  %73 = load %struct.biltins*, %struct.biltins** %5, align 8
  %74 = getelementptr inbounds %struct.biltins, %struct.biltins* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @strlen(i32 %75)
  store i32 %76, i32* %10, align 4
  %77 = load %struct.biltins*, %struct.biltins** %5, align 8
  %78 = getelementptr inbounds %struct.biltins, %struct.biltins* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @xprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %8, align 4
  %83 = sub nsw i32 %82, 1
  %84 = icmp slt i32 %81, %83
  br i1 %84, label %85, label %96

85:                                               ; preds = %72
  br label %86

86:                                               ; preds = %92, %85
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp ult i32 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %86
  %91 = call i32 @xputchar(i8 signext 32)
  br label %92

92:                                               ; preds = %90
  %93 = load i32, i32* %10, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %10, align 4
  br label %86

95:                                               ; preds = %86
  br label %96

96:                                               ; preds = %95, %72
  %97 = load %struct.biltins*, %struct.biltins** %5, align 8
  %98 = getelementptr inbounds %struct.biltins, %struct.biltins* %97, i32 1
  store %struct.biltins* %98, %struct.biltins** %5, align 8
  br label %99

99:                                               ; preds = %96, %66
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %7, align 4
  br label %62

103:                                              ; preds = %62
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* %9, align 4
  %106 = sub nsw i32 %105, 1
  %107 = icmp slt i32 %104, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %103
  %109 = load i64, i64* @Tty_raw_mode, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = call i32 @xputchar(i8 signext 13)
  br label %113

113:                                              ; preds = %111, %108
  %114 = call i32 @xputchar(i8 signext 10)
  br label %115

115:                                              ; preds = %113, %103
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %6, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %6, align 4
  br label %57

119:                                              ; preds = %57
  %120 = load i64, i64* @Tty_raw_mode, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = call i32 @xputchar(i8 signext 13)
  br label %124

124:                                              ; preds = %122, %119
  %125 = call i32 @xputchar(i8 signext 10)
  %126 = call i32 @cleanup_until(i64* @lbuffed)
  %127 = call i32 (...) @flush()
  ret void
}

declare dso_local i32 @USE(i32**) #1

declare dso_local i32 @cleanup_push(i64*, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @xprintf(i8*, i32) #1

declare dso_local i32 @xputchar(i8 signext) #1

declare dso_local i32 @cleanup_until(i64*) #1

declare dso_local i32 @flush(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
