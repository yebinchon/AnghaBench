; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/setkey/extr_setkey.c_promisc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/setkey/extr_setkey.c_promisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sadb_msg = type { i64, i32, i32, i32, i64, i64, i64, i32 }

@PF_KEY_V2 = common dso_local global i32 0, align 4
@SADB_X_PROMISC = common dso_local global i64 0, align 8
@so = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"send\00", align 1
@MSG_PEEK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"recv\00", align 1
@f_hexdump = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"%08x: \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @promisc() #0 {
  %1 = alloca %struct.sadb_msg, align 8
  %2 = alloca [32768 x i32], align 16
  %3 = alloca i32, align 4
  %4 = alloca %struct.sadb_msg*, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @PF_KEY_V2, align 4
  %7 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %1, i32 0, i32 7
  store i32 %6, i32* %7, align 8
  %8 = load i64, i64* @SADB_X_PROMISC, align 8
  %9 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %1, i32 0, i32 0
  store i64 %8, i64* %9, align 8
  %10 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %1, i32 0, i32 6
  store i64 0, i64* %10, align 8
  %11 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %1, i32 0, i32 1
  store i32 1, i32* %11, align 8
  %12 = call i32 @PFKEY_UNIT64(i32 56)
  %13 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %1, i32 0, i32 2
  store i32 %12, i32* %13, align 4
  %14 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %1, i32 0, i32 5
  store i64 0, i64* %14, align 8
  %15 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %1, i32 0, i32 4
  store i64 0, i64* %15, align 8
  %16 = call i32 (...) @getpid()
  %17 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %1, i32 0, i32 3
  store i32 %16, i32* %17, align 8
  %18 = load i32, i32* @so, align 4
  %19 = call i32 @send(i32 %18, %struct.sadb_msg* %1, i32 56, i32 0)
  store i32 %19, i32* %3, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %0
  %22 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %0
  br label %24

24:                                               ; preds = %23, %36, %112
  %25 = load i32, i32* @so, align 4
  %26 = getelementptr inbounds [32768 x i32], [32768 x i32]* %2, i64 0, i64 0
  %27 = load i32, i32* @MSG_PEEK, align 4
  %28 = call i32 @recv(i32 %25, i32* %26, i32 56, i32 %27)
  store i32 %28, i32* %3, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %24
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = icmp ne i64 %34, 56
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %24

37:                                               ; preds = %32
  %38 = getelementptr inbounds [32768 x i32], [32768 x i32]* %2, i64 0, i64 0
  %39 = bitcast i32* %38 to %struct.sadb_msg*
  store %struct.sadb_msg* %39, %struct.sadb_msg** %4, align 8
  %40 = load i32, i32* @so, align 4
  %41 = getelementptr inbounds [32768 x i32], [32768 x i32]* %2, i64 0, i64 0
  %42 = load %struct.sadb_msg*, %struct.sadb_msg** %4, align 8
  %43 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @PFKEY_UNUNIT64(i32 %44)
  %46 = call i32 @recv(i32 %40, i32* %41, i32 %45, i32 0)
  store i32 %46, i32* %3, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  %49 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %37
  %51 = call i32 (...) @printdate()
  %52 = load i64, i64* @f_hexdump, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %89

54:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %79, %54
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %3, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %82

59:                                               ; preds = %55
  %60 = load i32, i32* %5, align 4
  %61 = srem i32 %60, 16
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i32, i32* %5, align 4
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %63, %59
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [32768 x i32], [32768 x i32]* %2, i64 0, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 255
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %5, align 4
  %74 = srem i32 %73, 16
  %75 = icmp eq i32 %74, 15
  br i1 %75, label %76, label %78

76:                                               ; preds = %66
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %66
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %5, align 4
  br label %55

82:                                               ; preds = %55
  %83 = load i32, i32* %3, align 4
  %84 = srem i32 %83, 16
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %82
  br label %89

89:                                               ; preds = %88, %50
  %90 = load %struct.sadb_msg*, %struct.sadb_msg** %4, align 8
  %91 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @SADB_X_PROMISC, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %89
  %96 = load i32, i32* %3, align 4
  %97 = icmp slt i32 56, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load %struct.sadb_msg*, %struct.sadb_msg** %4, align 8
  %100 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %99, i32 1
  store %struct.sadb_msg* %100, %struct.sadb_msg** %4, align 8
  br label %102

101:                                              ; preds = %95
  store %struct.sadb_msg* null, %struct.sadb_msg** %4, align 8
  br label %102

102:                                              ; preds = %101, %98
  br label %103

103:                                              ; preds = %102, %89
  %104 = load %struct.sadb_msg*, %struct.sadb_msg** %4, align 8
  %105 = icmp ne %struct.sadb_msg* %104, null
  br i1 %105, label %106, label %112

106:                                              ; preds = %103
  %107 = load %struct.sadb_msg*, %struct.sadb_msg** %4, align 8
  %108 = call i32 @kdebug_sadb(%struct.sadb_msg* %107)
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %110 = load i32, i32* @stdout, align 4
  %111 = call i32 @fflush(i32 %110)
  br label %112

112:                                              ; preds = %106, %103
  br label %24
}

declare dso_local i32 @PFKEY_UNIT64(i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @send(i32, %struct.sadb_msg*, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @recv(i32, i32*, i32, i32) #1

declare dso_local i32 @PFKEY_UNUNIT64(i32) #1

declare dso_local i32 @printdate(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @kdebug_sadb(%struct.sadb_msg*) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
