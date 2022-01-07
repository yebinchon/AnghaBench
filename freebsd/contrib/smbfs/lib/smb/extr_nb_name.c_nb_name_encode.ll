; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_nb_name.c_nb_name_encode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_nb_name.c_nb_name_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nb_name = type { i8*, i8, i8* }

@NB_ENCNAMELEN = common dso_local global i32 0, align 4
@NB_NAMELEN = common dso_local global i32 0, align 4
@NB_MAXLABLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nb_name_encode(%struct.nb_name* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nb_name*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nb_name* %0, %struct.nb_name** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %8, align 8
  %12 = load i32, i32* @NB_ENCNAMELEN, align 4
  %13 = trunc i32 %12 to i8
  %14 = load i8*, i8** %8, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %8, align 8
  store i8 %13, i8* %14, align 1
  %16 = load %struct.nb_name*, %struct.nb_name** %4, align 8
  %17 = getelementptr inbounds %struct.nb_name, %struct.nb_name* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %6, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 42
  br i1 %23, label %24, label %35

24:                                               ; preds = %2
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = call i32 @nb_char_encode(i8** %8, i8 signext 42, i32 1)
  %32 = load i32, i32* @NB_NAMELEN, align 4
  %33 = sub nsw i32 %32, 1
  %34 = call i32 @nb_char_encode(i8** %8, i8 signext 32, i32 %33)
  br label %64

35:                                               ; preds = %24, %2
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %56, %35
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @NB_NAMELEN, align 4
  %39 = sub nsw i32 %38, 1
  %40 = icmp slt i32 %37, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %36
  %42 = load i8*, i8** %6, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %6, align 8
  %49 = load i8, i8* %47, align 1
  %50 = sext i8 %49 to i32
  %51 = call signext i8 @toupper(i32 %50)
  %52 = call i32 @nb_char_encode(i8** %8, i8 signext %51, i32 1)
  br label %55

53:                                               ; preds = %41
  %54 = call i32 @nb_char_encode(i8** %8, i8 signext 32, i32 1)
  br label %55

55:                                               ; preds = %53, %46
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %36

59:                                               ; preds = %36
  %60 = load %struct.nb_name*, %struct.nb_name** %4, align 8
  %61 = getelementptr inbounds %struct.nb_name, %struct.nb_name* %60, i32 0, i32 1
  %62 = load i8, i8* %61, align 8
  %63 = call i32 @nb_char_encode(i8** %8, i8 signext %62, i32 1)
  br label %64

64:                                               ; preds = %59, %30
  %65 = load i8*, i8** %8, align 8
  store i8 0, i8* %65, align 1
  %66 = load %struct.nb_name*, %struct.nb_name** %4, align 8
  %67 = getelementptr inbounds %struct.nb_name, %struct.nb_name* %66, i32 0, i32 2
  %68 = load i8*, i8** %67, align 8
  %69 = icmp eq i8* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load i8*, i8** %5, align 8
  %72 = call i32 @nb_encname_len(i8* %71)
  store i32 %72, i32* %3, align 4
  br label %121

73:                                               ; preds = %64
  %74 = load i8*, i8** %8, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %8, align 8
  store i8* %74, i8** %7, align 8
  store i32 0, i32* %10, align 4
  %76 = load %struct.nb_name*, %struct.nb_name** %4, align 8
  %77 = getelementptr inbounds %struct.nb_name, %struct.nb_name* %76, i32 0, i32 2
  %78 = load i8*, i8** %77, align 8
  store i8* %78, i8** %6, align 8
  br label %79

79:                                               ; preds = %115, %73
  %80 = load i8*, i8** %6, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 46
  br i1 %83, label %89, label %84

84:                                               ; preds = %79
  %85 = load i8*, i8** %6, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %84, %79
  %90 = load i32, i32* %10, align 4
  %91 = trunc i32 %90 to i8
  %92 = load i8*, i8** %7, align 8
  store i8 %91, i8* %92, align 1
  %93 = load i8*, i8** %8, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %8, align 8
  store i8* %93, i8** %7, align 8
  %95 = load i8*, i8** %7, align 8
  store i8 0, i8* %95, align 1
  %96 = load i8*, i8** %6, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %89
  br label %118

101:                                              ; preds = %89
  br label %114

102:                                              ; preds = %84
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* @NB_MAXLABLEN, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %102
  %107 = load i8*, i8** %6, align 8
  %108 = load i8, i8* %107, align 1
  %109 = load i8*, i8** %8, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %8, align 8
  store i8 %108, i8* %109, align 1
  %111 = load i32, i32* %10, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %10, align 4
  br label %113

113:                                              ; preds = %106, %102
  br label %114

114:                                              ; preds = %113, %101
  br label %115

115:                                              ; preds = %114
  %116 = load i8*, i8** %6, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %6, align 8
  br label %79

118:                                              ; preds = %100
  %119 = load i8*, i8** %5, align 8
  %120 = call i32 @nb_encname_len(i8* %119)
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %118, %70
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @nb_char_encode(i8**, i8 signext, i32) #1

declare dso_local signext i8 @toupper(i32) #1

declare dso_local i32 @nb_encname_len(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
