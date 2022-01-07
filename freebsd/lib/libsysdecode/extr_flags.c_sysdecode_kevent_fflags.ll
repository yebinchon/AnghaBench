; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libsysdecode/extr_flags.c_sysdecode_kevent_fflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libsysdecode/extr_flags.c_sysdecode_kevent_fflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@kevent_rdwr_fflags = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%#x\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"|%#x\00", align 1
@kevent_vnode_fflags = common dso_local global i32 0, align 4
@kevent_proc_fflags = common dso_local global i32 0, align 4
@kevent_timer_fflags = common dso_local global i32 0, align 4
@NOTE_FFCTRLMASK = common dso_local global i32 0, align 4
@NOTE_FFLAGSMASK = common dso_local global i32 0, align 4
@NOTE_TRIGGER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"NOTE_TRIGGER\00", align 1
@NOTE_FFNOP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"%s|%#x\00", align 1
@kevent_user_ffctrl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sysdecode_kevent_fflags(i32* %0, i16 signext %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i16 %1, i16* %6, align 2
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %15)
  br label %144

17:                                               ; preds = %4
  %18 = load i16, i16* %6, align 2
  %19 = sext i16 %18 to i32
  switch i32 %19, label %139 [
    i32 132, label %20
    i32 128, label %20
    i32 129, label %39
    i32 134, label %58
    i32 133, label %58
    i32 131, label %77
    i32 130, label %96
  ]

20:                                               ; preds = %17, %17
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* @kevent_rdwr_fflags, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @print_mask_int(i32* %21, i32 %22, i32 %23, i32* %9)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 (i32*, i8*, ...) @fprintf(i32* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %38

30:                                               ; preds = %20
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 (i32*, i8*, ...) @fprintf(i32* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %33, %30
  br label %38

38:                                               ; preds = %37, %26
  br label %144

39:                                               ; preds = %17
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* @kevent_vnode_fflags, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @print_mask_int(i32* %40, i32 %41, i32 %42, i32* %9)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %39
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 (i32*, i8*, ...) @fprintf(i32* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %57

49:                                               ; preds = %39
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 (i32*, i8*, ...) @fprintf(i32* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %52, %49
  br label %57

57:                                               ; preds = %56, %45
  br label %144

58:                                               ; preds = %17, %17
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* @kevent_proc_fflags, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @print_mask_int(i32* %59, i32 %60, i32 %61, i32* %9)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %58
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i32 (i32*, i8*, ...) @fprintf(i32* %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  br label %76

68:                                               ; preds = %58
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 (i32*, i8*, ...) @fprintf(i32* %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %71, %68
  br label %76

76:                                               ; preds = %75, %64
  br label %144

77:                                               ; preds = %17
  %78 = load i32*, i32** %5, align 8
  %79 = load i32, i32* @kevent_timer_fflags, align 4
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @print_mask_int(i32* %78, i32 %79, i32 %80, i32* %9)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %77
  %84 = load i32*, i32** %5, align 8
  %85 = load i32, i32* %9, align 4
  %86 = call i32 (i32*, i8*, ...) @fprintf(i32* %84, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  br label %95

87:                                               ; preds = %77
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load i32*, i32** %5, align 8
  %92 = load i32, i32* %9, align 4
  %93 = call i32 (i32*, i8*, ...) @fprintf(i32* %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %90, %87
  br label %95

95:                                               ; preds = %94, %83
  br label %144

96:                                               ; preds = %17
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @NOTE_FFCTRLMASK, align 4
  %99 = and i32 %97, %98
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @NOTE_FFLAGSMASK, align 4
  %102 = and i32 %100, %101
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @NOTE_TRIGGER, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %96
  %108 = load i32*, i32** %5, align 8
  %109 = call i32 @fputs(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32* %108)
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* @NOTE_TRIGGER, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  br label %144

114:                                              ; preds = %107
  %115 = load i32*, i32** %5, align 8
  %116 = call i32 @fputc(i8 signext 124, i32* %115)
  br label %117

117:                                              ; preds = %114, %96
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* @NOTE_FFNOP, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %126, label %121

121:                                              ; preds = %117
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* @NOTE_TRIGGER, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %121, %117
  %127 = load i32*, i32** %5, align 8
  %128 = load i32, i32* @kevent_user_ffctrl, align 4
  %129 = load i32, i32* %10, align 4
  %130 = call i8* @lookup_value(i32 %128, i32 %129)
  %131 = load i32, i32* %11, align 4
  %132 = call i32 (i32*, i8*, ...) @fprintf(i32* %127, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %130, i32 %131)
  br label %138

133:                                              ; preds = %121
  %134 = load i32*, i32** %5, align 8
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* %8, align 4
  %137 = call i32 @print_integer(i32* %134, i32 %135, i32 %136)
  br label %138

138:                                              ; preds = %133, %126
  br label %144

139:                                              ; preds = %17
  %140 = load i32*, i32** %5, align 8
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* %8, align 4
  %143 = call i32 @print_integer(i32* %140, i32 %141, i32 %142)
  br label %144

144:                                              ; preds = %14, %113, %139, %138, %95, %76, %57, %38
  ret void
}

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @print_mask_int(i32*, i32, i32, i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @fputc(i8 signext, i32*) #1

declare dso_local i8* @lookup_value(i32, i32) #1

declare dso_local i32 @print_integer(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
