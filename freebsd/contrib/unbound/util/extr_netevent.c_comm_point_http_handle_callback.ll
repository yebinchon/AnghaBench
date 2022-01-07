; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_comm_point_http_handle_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_comm_point_http_handle_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comm_point = type { i64, i32, i32 (%struct.comm_point*, i32, i32, i32*)*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@comm_http = common dso_local global i64 0, align 8
@UB_EV_TIMEOUT = common dso_local global i16 0, align 2
@VERB_QUERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"http took too long, dropped\00", align 1
@NETEVENT_TIMEOUT = common dso_local global i32 0, align 4
@UB_EV_READ = common dso_local global i16 0, align 2
@NETEVENT_CLOSED = common dso_local global i32 0, align 4
@UB_EV_WRITE = common dso_local global i16 0, align 2
@.str.1 = private unnamed_addr constant [30 x i8] c"Ignored event %d for httphdl.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @comm_point_http_handle_callback(i32 %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca %struct.comm_point*, align 8
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.comm_point*
  store %struct.comm_point* %9, %struct.comm_point** %7, align 8
  %10 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %11 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @comm_http, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @log_assert(i32 %15)
  %17 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %18 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %17, i32 0, i32 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ub_comm_base_now(i32 %21)
  %23 = load i16, i16* %5, align 2
  %24 = sext i16 %23 to i32
  %25 = load i16, i16* @UB_EV_TIMEOUT, align 2
  %26 = sext i16 %25 to i32
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %54

29:                                               ; preds = %3
  %30 = load i32, i32* @VERB_QUERY, align 4
  %31 = call i32 @verbose(i32 %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %33 = call i32 @reclaim_http_handler(%struct.comm_point* %32)
  %34 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %35 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %53, label %38

38:                                               ; preds = %29
  %39 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %40 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %39, i32 0, i32 2
  %41 = load i32 (%struct.comm_point*, i32, i32, i32*)*, i32 (%struct.comm_point*, i32, i32, i32*)** %40, align 8
  %42 = call i32 @fptr_whitelist_comm_point(i32 (%struct.comm_point*, i32, i32, i32*)* %41)
  %43 = call i32 @fptr_ok(i32 %42)
  %44 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %45 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %44, i32 0, i32 2
  %46 = load i32 (%struct.comm_point*, i32, i32, i32*)*, i32 (%struct.comm_point*, i32, i32, i32*)** %45, align 8
  %47 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %48 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %49 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @NETEVENT_TIMEOUT, align 4
  %52 = call i32 %46(%struct.comm_point* %47, i32 %50, i32 %51, i32* null)
  br label %53

53:                                               ; preds = %38, %29
  br label %129

54:                                               ; preds = %3
  %55 = load i16, i16* %5, align 2
  %56 = sext i16 %55 to i32
  %57 = load i16, i16* @UB_EV_READ, align 2
  %58 = sext i16 %57 to i32
  %59 = and i32 %56, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %90

61:                                               ; preds = %54
  %62 = load i32, i32* %4, align 4
  %63 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %64 = call i32 @comm_point_http_handle_read(i32 %62, %struct.comm_point* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %89, label %66

66:                                               ; preds = %61
  %67 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %68 = call i32 @reclaim_http_handler(%struct.comm_point* %67)
  %69 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %70 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %88, label %73

73:                                               ; preds = %66
  %74 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %75 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %74, i32 0, i32 2
  %76 = load i32 (%struct.comm_point*, i32, i32, i32*)*, i32 (%struct.comm_point*, i32, i32, i32*)** %75, align 8
  %77 = call i32 @fptr_whitelist_comm_point(i32 (%struct.comm_point*, i32, i32, i32*)* %76)
  %78 = call i32 @fptr_ok(i32 %77)
  %79 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %80 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %79, i32 0, i32 2
  %81 = load i32 (%struct.comm_point*, i32, i32, i32*)*, i32 (%struct.comm_point*, i32, i32, i32*)** %80, align 8
  %82 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %83 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %84 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @NETEVENT_CLOSED, align 4
  %87 = call i32 %81(%struct.comm_point* %82, i32 %85, i32 %86, i32* null)
  br label %88

88:                                               ; preds = %73, %66
  br label %89

89:                                               ; preds = %88, %61
  br label %129

90:                                               ; preds = %54
  %91 = load i16, i16* %5, align 2
  %92 = sext i16 %91 to i32
  %93 = load i16, i16* @UB_EV_WRITE, align 2
  %94 = sext i16 %93 to i32
  %95 = and i32 %92, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %126

97:                                               ; preds = %90
  %98 = load i32, i32* %4, align 4
  %99 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %100 = call i32 @comm_point_http_handle_write(i32 %98, %struct.comm_point* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %125, label %102

102:                                              ; preds = %97
  %103 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %104 = call i32 @reclaim_http_handler(%struct.comm_point* %103)
  %105 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %106 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %124, label %109

109:                                              ; preds = %102
  %110 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %111 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %110, i32 0, i32 2
  %112 = load i32 (%struct.comm_point*, i32, i32, i32*)*, i32 (%struct.comm_point*, i32, i32, i32*)** %111, align 8
  %113 = call i32 @fptr_whitelist_comm_point(i32 (%struct.comm_point*, i32, i32, i32*)* %112)
  %114 = call i32 @fptr_ok(i32 %113)
  %115 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %116 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %115, i32 0, i32 2
  %117 = load i32 (%struct.comm_point*, i32, i32, i32*)*, i32 (%struct.comm_point*, i32, i32, i32*)** %116, align 8
  %118 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %119 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %120 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @NETEVENT_CLOSED, align 4
  %123 = call i32 %117(%struct.comm_point* %118, i32 %121, i32 %122, i32* null)
  br label %124

124:                                              ; preds = %109, %102
  br label %125

125:                                              ; preds = %124, %97
  br label %129

126:                                              ; preds = %90
  %127 = load i16, i16* %5, align 2
  %128 = call i32 @log_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i16 signext %127)
  br label %129

129:                                              ; preds = %126, %125, %89, %53
  ret void
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @ub_comm_base_now(i32) #1

declare dso_local i32 @verbose(i32, i8*) #1

declare dso_local i32 @reclaim_http_handler(%struct.comm_point*) #1

declare dso_local i32 @fptr_ok(i32) #1

declare dso_local i32 @fptr_whitelist_comm_point(i32 (%struct.comm_point*, i32, i32, i32*)*) #1

declare dso_local i32 @comm_point_http_handle_read(i32, %struct.comm_point*) #1

declare dso_local i32 @comm_point_http_handle_write(i32, %struct.comm_point*) #1

declare dso_local i32 @log_err(i8*, i16 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
