; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libunbound.c_ub_ctx_resolvconf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libunbound.c_ub_ctx_resolvconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_ctx = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"/etc/resolv.conf\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@UB_READFILE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"nameserver\00", align 1
@UB_NOERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@ERROR_BUFFER_OVERFLOW = common dso_local global i64 0, align 8
@NO_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ub_ctx_resolvconf(%struct.ub_ctx* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ub_ctx*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [1024 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.ub_ctx* %0, %struct.ub_ctx** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %7, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %15

15:                                               ; preds = %14, %2
  %16 = load i8*, i8** %5, align 8
  %17 = call i32* @fopen(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %17, i32** %6, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @UB_READFILE, align 4
  store i32 %21, i32* %3, align 4
  br label %115

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %104, %22
  %24 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %25 = load i32*, i32** %6, align 8
  %26 = call i64 @fgets(i8* %24, i32 1024, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %105

28:                                               ; preds = %23
  %29 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 1023
  store i8 0, i8* %29, align 1
  %30 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  store i8* %30, i8** %9, align 8
  br label %31

31:                                               ; preds = %43, %28
  %32 = load i8*, i8** %9, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 32
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load i8*, i8** %9, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 9
  br label %41

41:                                               ; preds = %36, %31
  %42 = phi i1 [ true, %31 ], [ %40, %36 ]
  br i1 %42, label %43, label %46

43:                                               ; preds = %41
  %44 = load i8*, i8** %9, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %9, align 8
  br label %31

46:                                               ; preds = %41
  %47 = load i8*, i8** %9, align 8
  %48 = call i64 @strncmp(i8* %47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 10)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %104

50:                                               ; preds = %46
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  %53 = load i8*, i8** %9, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 10
  store i8* %54, i8** %9, align 8
  br label %55

55:                                               ; preds = %67, %50
  %56 = load i8*, i8** %9, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 32
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load i8*, i8** %9, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 9
  br label %65

65:                                               ; preds = %60, %55
  %66 = phi i1 [ true, %55 ], [ %64, %60 ]
  br i1 %66, label %67, label %70

67:                                               ; preds = %65
  %68 = load i8*, i8** %9, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %9, align 8
  br label %55

70:                                               ; preds = %65
  %71 = load i8*, i8** %9, align 8
  store i8* %71, i8** %10, align 8
  br label %72

72:                                               ; preds = %89, %70
  %73 = load i8*, i8** %9, align 8
  %74 = load i8, i8* %73, align 1
  %75 = call i64 @isxdigit(i8 zeroext %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %87, label %77

77:                                               ; preds = %72
  %78 = load i8*, i8** %9, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 46
  br i1 %81, label %87, label %82

82:                                               ; preds = %77
  %83 = load i8*, i8** %9, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 58
  br label %87

87:                                               ; preds = %82, %77, %72
  %88 = phi i1 [ true, %77 ], [ true, %72 ], [ %86, %82 ]
  br i1 %88, label %89, label %92

89:                                               ; preds = %87
  %90 = load i8*, i8** %9, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %9, align 8
  br label %72

92:                                               ; preds = %87
  %93 = load i8*, i8** %9, align 8
  store i8 0, i8* %93, align 1
  %94 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %95 = load i8*, i8** %10, align 8
  %96 = call i32 @ub_ctx_set_fwd(%struct.ub_ctx* %94, i8* %95)
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* @UB_NOERROR, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %92
  %100 = load i32*, i32** %6, align 8
  %101 = call i32 @fclose(i32* %100)
  %102 = load i32, i32* %11, align 4
  store i32 %102, i32* %3, align 4
  br label %115

103:                                              ; preds = %92
  br label %104

104:                                              ; preds = %103, %46
  br label %23

105:                                              ; preds = %23
  %106 = load i32*, i32** %6, align 8
  %107 = call i32 @fclose(i32* %106)
  %108 = load i32, i32* %7, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %112 = call i32 @ub_ctx_set_fwd(%struct.ub_ctx* %111, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i32 %112, i32* %3, align 4
  br label %115

113:                                              ; preds = %105
  %114 = load i32, i32* @UB_NOERROR, align 4
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %113, %110, %99, %20
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @isxdigit(i8 zeroext) #1

declare dso_local i32 @ub_ctx_set_fwd(%struct.ub_ctx*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
