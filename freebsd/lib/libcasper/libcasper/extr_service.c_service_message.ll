; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/libcasper/extr_service.c_service_message.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/libcasper/extr_service.c_service_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.service = type { i32, i32 (i32*, i32*)*, i32 (i8*, i32*, i32*, i32*)* }
%struct.service_connection = type { i32 }

@CASPER_SERVICE_NO_UNIQ_LIMITS = common dso_local global i32 0, align 4
@NV_FLAG_NO_UNIQUE = common dso_local global i32 0, align 4
@EDOOFUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"cmd\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"limit_set\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"limits\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"limit_get\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"clone\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"sock\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @service_message(%struct.service* %0, %struct.service_connection* %1) #0 {
  %3 = alloca %struct.service*, align 8
  %4 = alloca %struct.service_connection*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.service* %0, %struct.service** %3, align 8
  store %struct.service_connection* %1, %struct.service_connection** %4, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.service*, %struct.service** %3, align 8
  %14 = getelementptr inbounds %struct.service, %struct.service* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @CASPER_SERVICE_NO_UNIQ_LIMITS, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @NV_FLAG_NO_UNIQUE, align 4
  store i32 %20, i32* %9, align 4
  br label %21

21:                                               ; preds = %19, %2
  %22 = load %struct.service_connection*, %struct.service_connection** %4, align 8
  %23 = call i32 @service_connection_get_chan(%struct.service_connection* %22)
  %24 = call i32* @cap_recv_nvlist(i32 %23)
  store i32* %24, i32** %5, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load %struct.service*, %struct.service** %3, align 8
  %29 = load %struct.service_connection*, %struct.service_connection** %4, align 8
  %30 = call i32 @service_connection_remove(%struct.service* %28, %struct.service_connection* %29)
  br label %132

31:                                               ; preds = %21
  %32 = load i32, i32* @EDOOFUS, align 4
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32* @nvlist_create(i32 %33)
  store i32* %34, i32** %6, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = call i8* @nvlist_get_string(i32* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %36, i8** %7, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = call i64 @strcmp(i8* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %68

40:                                               ; preds = %31
  %41 = load i32*, i32** %5, align 8
  %42 = call i32* @nvlist_take_nvlist(i32* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i32* %42, i32** %10, align 8
  %43 = load %struct.service*, %struct.service** %3, align 8
  %44 = getelementptr inbounds %struct.service, %struct.service* %43, i32 0, i32 1
  %45 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %44, align 8
  %46 = icmp eq i32 (i32*, i32*)* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %48, i32* %8, align 4
  br label %57

49:                                               ; preds = %40
  %50 = load %struct.service*, %struct.service** %3, align 8
  %51 = getelementptr inbounds %struct.service, %struct.service* %50, i32 0, i32 1
  %52 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %51, align 8
  %53 = load %struct.service_connection*, %struct.service_connection** %4, align 8
  %54 = call i32* @service_connection_get_limits(%struct.service_connection* %53)
  %55 = load i32*, i32** %10, align 8
  %56 = call i32 %52(i32* %54, i32* %55)
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %49, %47
  %58 = load i32, i32* %8, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load %struct.service_connection*, %struct.service_connection** %4, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = call i32 @service_connection_set_limits(%struct.service_connection* %61, i32* %62)
  br label %67

64:                                               ; preds = %57
  %65 = load i32*, i32** %10, align 8
  %66 = call i32 @nvlist_destroy(i32* %65)
  br label %67

67:                                               ; preds = %64, %60
  br label %114

68:                                               ; preds = %31
  %69 = load i8*, i8** %7, align 8
  %70 = call i64 @strcmp(i8* %69, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %68
  %73 = load %struct.service_connection*, %struct.service_connection** %4, align 8
  %74 = call i32* @service_connection_get_limits(%struct.service_connection* %73)
  store i32* %74, i32** %11, align 8
  %75 = load i32*, i32** %11, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load i32*, i32** %6, align 8
  %79 = load i32*, i32** %11, align 8
  %80 = call i32 @nvlist_add_nvlist(i32* %78, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* %79)
  br label %84

81:                                               ; preds = %72
  %82 = load i32*, i32** %6, align 8
  %83 = call i32 @nvlist_add_null(i32* %82, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %84

84:                                               ; preds = %81, %77
  store i32 0, i32* %8, align 4
  br label %113

85:                                               ; preds = %68
  %86 = load i8*, i8** %7, align 8
  %87 = call i64 @strcmp(i8* %86, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %85
  %90 = load %struct.service*, %struct.service** %3, align 8
  %91 = load %struct.service_connection*, %struct.service_connection** %4, align 8
  %92 = call i32 @service_connection_clone(%struct.service* %90, %struct.service_connection* %91)
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %12, align 4
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = load i32, i32* @errno, align 4
  store i32 %96, i32* %8, align 4
  br label %101

97:                                               ; preds = %89
  %98 = load i32*, i32** %6, align 8
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @nvlist_move_descriptor(i32* %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %99)
  store i32 0, i32* %8, align 4
  br label %101

101:                                              ; preds = %97, %95
  br label %112

102:                                              ; preds = %85
  %103 = load %struct.service*, %struct.service** %3, align 8
  %104 = getelementptr inbounds %struct.service, %struct.service* %103, i32 0, i32 2
  %105 = load i32 (i8*, i32*, i32*, i32*)*, i32 (i8*, i32*, i32*, i32*)** %104, align 8
  %106 = load i8*, i8** %7, align 8
  %107 = load %struct.service_connection*, %struct.service_connection** %4, align 8
  %108 = call i32* @service_connection_get_limits(%struct.service_connection* %107)
  %109 = load i32*, i32** %5, align 8
  %110 = load i32*, i32** %6, align 8
  %111 = call i32 %105(i8* %106, i32* %108, i32* %109, i32* %110)
  store i32 %111, i32* %8, align 4
  br label %112

112:                                              ; preds = %102, %101
  br label %113

113:                                              ; preds = %112, %84
  br label %114

114:                                              ; preds = %113, %67
  %115 = load i32*, i32** %5, align 8
  %116 = call i32 @nvlist_destroy(i32* %115)
  %117 = load i32*, i32** %6, align 8
  %118 = load i32, i32* %8, align 4
  %119 = call i32 @nvlist_add_number(i32* %117, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %118)
  %120 = load %struct.service_connection*, %struct.service_connection** %4, align 8
  %121 = call i32 @service_connection_get_chan(%struct.service_connection* %120)
  %122 = load i32*, i32** %6, align 8
  %123 = call i32 @cap_send_nvlist(i32 %121, i32* %122)
  %124 = icmp eq i32 %123, -1
  br i1 %124, label %125, label %129

125:                                              ; preds = %114
  %126 = load %struct.service*, %struct.service** %3, align 8
  %127 = load %struct.service_connection*, %struct.service_connection** %4, align 8
  %128 = call i32 @service_connection_remove(%struct.service* %126, %struct.service_connection* %127)
  br label %129

129:                                              ; preds = %125, %114
  %130 = load i32*, i32** %6, align 8
  %131 = call i32 @nvlist_destroy(i32* %130)
  br label %132

132:                                              ; preds = %129, %27
  ret void
}

declare dso_local i32* @cap_recv_nvlist(i32) #1

declare dso_local i32 @service_connection_get_chan(%struct.service_connection*) #1

declare dso_local i32 @service_connection_remove(%struct.service*, %struct.service_connection*) #1

declare dso_local i32* @nvlist_create(i32) #1

declare dso_local i8* @nvlist_get_string(i32*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @nvlist_take_nvlist(i32*, i8*) #1

declare dso_local i32* @service_connection_get_limits(%struct.service_connection*) #1

declare dso_local i32 @service_connection_set_limits(%struct.service_connection*, i32*) #1

declare dso_local i32 @nvlist_destroy(i32*) #1

declare dso_local i32 @nvlist_add_nvlist(i32*, i8*, i32*) #1

declare dso_local i32 @nvlist_add_null(i32*, i8*) #1

declare dso_local i32 @service_connection_clone(%struct.service*, %struct.service_connection*) #1

declare dso_local i32 @nvlist_move_descriptor(i32*, i8*, i32) #1

declare dso_local i32 @nvlist_add_number(i32*, i8*, i32) #1

declare dso_local i32 @cap_send_nvlist(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
