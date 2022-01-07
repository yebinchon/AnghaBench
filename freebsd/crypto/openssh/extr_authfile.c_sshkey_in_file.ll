; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_authfile.c_sshkey_in_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_authfile.c_sshkey_in_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshkey = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.sshkey* }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@SSH_ERR_SYSTEM_ERROR = common dso_local global i32 0, align 4
@KEY_UNSPEC = common dso_local global i32 0, align 4
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@SSH_ERR_KEY_NOT_FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sshkey_in_file(%struct.sshkey* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sshkey*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.sshkey*, align 8
  %16 = alloca i32 (%struct.sshkey*, %struct.sshkey*)*, align 8
  store %struct.sshkey* %0, %struct.sshkey** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* null, i8** %11, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %14, align 4
  store %struct.sshkey* null, %struct.sshkey** %15, align 8
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 (%struct.sshkey*, %struct.sshkey*)* @sshkey_equal, i32 (%struct.sshkey*, %struct.sshkey*)* @sshkey_equal_public
  store i32 (%struct.sshkey*, %struct.sshkey*)* %20, i32 (%struct.sshkey*, %struct.sshkey*)** %16, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = call i32* @fopen(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %22, i32** %10, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* @SSH_ERR_SYSTEM_ERROR, align 4
  store i32 %25, i32* %5, align 4
  br label %109

26:                                               ; preds = %4
  br label %27

27:                                               ; preds = %96, %60, %26
  %28 = load i32*, i32** %10, align 8
  %29 = call i32 @getline(i8** %11, i64* %13, i32* %28)
  %30 = icmp ne i32 %29, -1
  br i1 %30, label %31, label %99

31:                                               ; preds = %27
  %32 = load i8*, i8** %11, align 8
  store i8* %32, i8** %12, align 8
  br label %33

33:                                               ; preds = %53, %31
  %34 = load i8*, i8** %12, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %33
  %39 = load i8*, i8** %12, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 32
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = load i8*, i8** %12, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 9
  br label %48

48:                                               ; preds = %43, %38
  %49 = phi i1 [ true, %38 ], [ %47, %43 ]
  br label %50

50:                                               ; preds = %48, %33
  %51 = phi i1 [ false, %33 ], [ %49, %48 ]
  br i1 %51, label %52, label %56

52:                                               ; preds = %50
  br label %53

53:                                               ; preds = %52
  %54 = load i8*, i8** %12, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %12, align 8
  br label %33

56:                                               ; preds = %50
  %57 = load i8*, i8** %12, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  switch i32 %59, label %61 [
    i32 35, label %60
    i32 10, label %60
    i32 0, label %60
  ]

60:                                               ; preds = %56, %56, %56
  br label %27

61:                                               ; preds = %56
  %62 = load i32, i32* @KEY_UNSPEC, align 4
  %63 = call %struct.sshkey* @sshkey_new(i32 %62)
  store %struct.sshkey* %63, %struct.sshkey** %15, align 8
  %64 = icmp eq %struct.sshkey* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %66, i32* %14, align 4
  br label %101

67:                                               ; preds = %61
  %68 = load %struct.sshkey*, %struct.sshkey** %15, align 8
  %69 = call i32 @sshkey_read(%struct.sshkey* %68, i8** %12)
  store i32 %69, i32* %14, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %101

72:                                               ; preds = %67
  %73 = load i32 (%struct.sshkey*, %struct.sshkey*)*, i32 (%struct.sshkey*, %struct.sshkey*)** %16, align 8
  %74 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %75 = load %struct.sshkey*, %struct.sshkey** %15, align 8
  %76 = call i32 %73(%struct.sshkey* %74, %struct.sshkey* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %95, label %78

78:                                               ; preds = %72
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %96

81:                                               ; preds = %78
  %82 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %83 = call i64 @sshkey_is_cert(%struct.sshkey* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %81
  %86 = load i32 (%struct.sshkey*, %struct.sshkey*)*, i32 (%struct.sshkey*, %struct.sshkey*)** %16, align 8
  %87 = load %struct.sshkey*, %struct.sshkey** %6, align 8
  %88 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %87, i32 0, i32 0
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load %struct.sshkey*, %struct.sshkey** %90, align 8
  %92 = load %struct.sshkey*, %struct.sshkey** %15, align 8
  %93 = call i32 %86(%struct.sshkey* %91, %struct.sshkey* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %85, %72
  store i32 0, i32* %14, align 4
  br label %101

96:                                               ; preds = %85, %81, %78
  %97 = load %struct.sshkey*, %struct.sshkey** %15, align 8
  %98 = call i32 @sshkey_free(%struct.sshkey* %97)
  store %struct.sshkey* null, %struct.sshkey** %15, align 8
  br label %27

99:                                               ; preds = %27
  %100 = load i32, i32* @SSH_ERR_KEY_NOT_FOUND, align 4
  store i32 %100, i32* %14, align 4
  br label %101

101:                                              ; preds = %99, %95, %71, %65
  %102 = load i8*, i8** %11, align 8
  %103 = call i32 @free(i8* %102)
  %104 = load %struct.sshkey*, %struct.sshkey** %15, align 8
  %105 = call i32 @sshkey_free(%struct.sshkey* %104)
  %106 = load i32*, i32** %10, align 8
  %107 = call i32 @fclose(i32* %106)
  %108 = load i32, i32* %14, align 4
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %101, %24
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local i32 @sshkey_equal(%struct.sshkey*, %struct.sshkey*) #1

declare dso_local i32 @sshkey_equal_public(%struct.sshkey*, %struct.sshkey*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @getline(i8**, i64*, i32*) #1

declare dso_local %struct.sshkey* @sshkey_new(i32) #1

declare dso_local i32 @sshkey_read(%struct.sshkey*, i8**) #1

declare dso_local i64 @sshkey_is_cert(%struct.sshkey*) #1

declare dso_local i32 @sshkey_free(%struct.sshkey*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
