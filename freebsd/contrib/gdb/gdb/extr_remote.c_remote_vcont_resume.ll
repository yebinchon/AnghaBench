; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_remote_vcont_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_remote_vcont_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.remote_state = type { i64 }
%struct.cleanup = type { i32 }

@xfree = common dso_local global i32 0, align 4
@remote_protocol_vcont = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PACKET_SUPPORT_UNKNOWN = common dso_local global i64 0, align 8
@PACKET_DISABLE = common dso_local global i64 0, align 8
@inferior_ptid = common dso_local global i32 0, align 4
@MAGIC_NULL_PID = common dso_local global i32 0, align 4
@TARGET_SIGNAL_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"vCont;S%02x\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"vCont;s\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"vCont;C%02x\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"vCont;c\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"vCont;S%02x:%x;c\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"vCont;s:%x;c\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"vCont;C%02x:%x;c\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"vCont;S%02x:%x\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"vCont;s:%x\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"vCont;C%02x:%x\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"vCont;c:%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @remote_vcont_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remote_vcont_resume(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.remote_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.cleanup*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = call %struct.remote_state* (...) @get_remote_state()
  store %struct.remote_state* %13, %struct.remote_state** %8, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @PIDGET(i32 %14)
  store i32 %15, i32* %9, align 4
  store i8* null, i8** %10, align 8
  %16 = load %struct.remote_state*, %struct.remote_state** %8, align 8
  %17 = getelementptr inbounds %struct.remote_state, %struct.remote_state* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i8* @xmalloc(i64 %18)
  store i8* %19, i8** %10, align 8
  %20 = load i32, i32* @xfree, align 4
  %21 = load i8*, i8** %10, align 8
  %22 = call %struct.cleanup* @make_cleanup(i32 %20, i8* %21)
  store %struct.cleanup* %22, %struct.cleanup** %12, align 8
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @remote_protocol_vcont, i32 0, i32 0), align 8
  %24 = load i64, i64* @PACKET_SUPPORT_UNKNOWN, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %3
  %27 = load %struct.remote_state*, %struct.remote_state** %8, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = call i32 @remote_vcont_probe(%struct.remote_state* %27, i8* %28)
  br label %30

30:                                               ; preds = %26, %3
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @remote_protocol_vcont, i32 0, i32 0), align 8
  %32 = load i64, i64* @PACKET_DISABLE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load %struct.cleanup*, %struct.cleanup** %12, align 8
  %36 = call i32 @do_cleanups(%struct.cleanup* %35)
  store i32 0, i32* %4, align 4
  br label %158

37:                                               ; preds = %30
  %38 = load i32, i32* @inferior_ptid, align 4
  %39 = call i32 @PIDGET(i32 %38)
  %40 = load i32, i32* @MAGIC_NULL_PID, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %69

42:                                               ; preds = %37
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @TARGET_SIGNAL_0, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* %7, align 4
  %51 = call i8* (i8*, ...) @xstrprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %50)
  store i8* %51, i8** %11, align 8
  br label %68

52:                                               ; preds = %45, %42
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = call i8* (i8*, ...) @xstrprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i8* %56, i8** %11, align 8
  br label %67

57:                                               ; preds = %52
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @TARGET_SIGNAL_0, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32, i32* %7, align 4
  %63 = call i8* (i8*, ...) @xstrprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  store i8* %63, i8** %11, align 8
  br label %66

64:                                               ; preds = %57
  %65 = call i8* (i8*, ...) @xstrprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i8* %65, i8** %11, align 8
  br label %66

66:                                               ; preds = %64, %61
  br label %67

67:                                               ; preds = %66, %55
  br label %68

68:                                               ; preds = %67, %49
  br label %137

69:                                               ; preds = %37
  %70 = load i32, i32* %9, align 4
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %105

72:                                               ; preds = %69
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @TARGET_SIGNAL_0, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @inferior_ptid, align 4
  %82 = call i32 @PIDGET(i32 %81)
  %83 = call i8* (i8*, ...) @xstrprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %80, i32 %82)
  store i8* %83, i8** %11, align 8
  br label %104

84:                                               ; preds = %75, %72
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load i32, i32* @inferior_ptid, align 4
  %89 = call i32 @PIDGET(i32 %88)
  %90 = call i8* (i8*, ...) @xstrprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %89)
  store i8* %90, i8** %11, align 8
  br label %103

91:                                               ; preds = %84
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @TARGET_SIGNAL_0, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %91
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @inferior_ptid, align 4
  %98 = call i32 @PIDGET(i32 %97)
  %99 = call i8* (i8*, ...) @xstrprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %96, i32 %98)
  store i8* %99, i8** %11, align 8
  br label %102

100:                                              ; preds = %91
  %101 = call i8* (i8*, ...) @xstrprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i8* %101, i8** %11, align 8
  br label %102

102:                                              ; preds = %100, %95
  br label %103

103:                                              ; preds = %102, %87
  br label %104

104:                                              ; preds = %103, %79
  br label %136

105:                                              ; preds = %69
  %106 = load i32, i32* %6, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %105
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* @TARGET_SIGNAL_0, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %108
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* %9, align 4
  %115 = call i8* (i8*, ...) @xstrprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %113, i32 %114)
  store i8* %115, i8** %11, align 8
  br label %135

116:                                              ; preds = %108, %105
  %117 = load i32, i32* %6, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load i32, i32* %9, align 4
  %121 = call i8* (i8*, ...) @xstrprintf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %120)
  store i8* %121, i8** %11, align 8
  br label %134

122:                                              ; preds = %116
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* @TARGET_SIGNAL_0, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %122
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* %9, align 4
  %129 = call i8* (i8*, ...) @xstrprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 %127, i32 %128)
  store i8* %129, i8** %11, align 8
  br label %133

130:                                              ; preds = %122
  %131 = load i32, i32* %9, align 4
  %132 = call i8* (i8*, ...) @xstrprintf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 %131)
  store i8* %132, i8** %11, align 8
  br label %133

133:                                              ; preds = %130, %126
  br label %134

134:                                              ; preds = %133, %119
  br label %135

135:                                              ; preds = %134, %112
  br label %136

136:                                              ; preds = %135, %104
  br label %137

137:                                              ; preds = %136, %68
  %138 = load i8*, i8** %11, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %147

140:                                              ; preds = %137
  %141 = load i8*, i8** %11, align 8
  %142 = call i64 @strlen(i8* %141)
  %143 = load %struct.remote_state*, %struct.remote_state** %8, align 8
  %144 = getelementptr inbounds %struct.remote_state, %struct.remote_state* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp slt i64 %142, %145
  br label %147

147:                                              ; preds = %140, %137
  %148 = phi i1 [ false, %137 ], [ %146, %140 ]
  %149 = zext i1 %148 to i32
  %150 = call i32 @gdb_assert(i32 %149)
  %151 = load i32, i32* @xfree, align 4
  %152 = load i8*, i8** %11, align 8
  %153 = call %struct.cleanup* @make_cleanup(i32 %151, i8* %152)
  %154 = load i8*, i8** %11, align 8
  %155 = call i32 @putpkt(i8* %154)
  %156 = load %struct.cleanup*, %struct.cleanup** %12, align 8
  %157 = call i32 @do_cleanups(%struct.cleanup* %156)
  store i32 1, i32* %4, align 4
  br label %158

158:                                              ; preds = %147, %34
  %159 = load i32, i32* %4, align 4
  ret i32 %159
}

declare dso_local %struct.remote_state* @get_remote_state(...) #1

declare dso_local i32 @PIDGET(i32) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, i8*) #1

declare dso_local i32 @remote_vcont_probe(%struct.remote_state*, i8*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

declare dso_local i8* @xstrprintf(i8*, ...) #1

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @putpkt(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
