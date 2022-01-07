; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_remote_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_remote_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.remote_state = type { i32 }

@last_sent_signal = common dso_local global i32 0, align 4
@last_sent_step = common dso_local global i32 0, align 4
@step_range_end = common dso_local global i64 0, align 8
@TARGET_SIGNAL_0 = common dso_local global i32 0, align 4
@remote_protocol_E = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@PACKET_DISABLE = common dso_local global i64 0, align 8
@step_range_start = common dso_local global i64 0, align 8
@PACKET_OK = common dso_local global i64 0, align 8
@remote_protocol_e = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @remote_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remote_resume(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.remote_state*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = call %struct.remote_state* (...) @get_remote_state()
  store %struct.remote_state* %11, %struct.remote_state** %7, align 8
  %12 = load %struct.remote_state*, %struct.remote_state** %7, align 8
  %13 = getelementptr inbounds %struct.remote_state, %struct.remote_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @alloca(i32 %14)
  store i8* %15, i8** %8, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @PIDGET(i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* @last_sent_signal, align 4
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* @last_sent_step, align 4
  br i1 true, label %20, label %22

20:                                               ; preds = %3
  %21 = call i32 (...) @target_resume_hook()
  br label %22

22:                                               ; preds = %20, %3
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i64 @remote_vcont_resume(i32 %23, i32 %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %180

29:                                               ; preds = %22
  %30 = load i32, i32* %9, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = call i32 @set_thread(i32 0, i32 0)
  br label %37

34:                                               ; preds = %29
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @set_thread(i32 %35, i32 0)
  br label %37

37:                                               ; preds = %34, %32
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %143

40:                                               ; preds = %37
  %41 = load i64, i64* @step_range_end, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %143

43:                                               ; preds = %40
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @TARGET_SIGNAL_0, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %102

47:                                               ; preds = %43
  %48 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @remote_protocol_E, i32 0, i32 0), align 8
  %49 = load i64, i64* @PACKET_DISABLE, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %101

51:                                               ; preds = %47
  %52 = load i8*, i8** %8, align 8
  store i8* %52, i8** %10, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %10, align 8
  store i8 69, i8* %53, align 1
  %55 = load i32, i32* %6, align 4
  %56 = ashr i32 %55, 4
  %57 = and i32 %56, 15
  %58 = call i8* @tohex(i32 %57)
  %59 = ptrtoint i8* %58 to i8
  %60 = load i8*, i8** %10, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %10, align 8
  store i8 %59, i8* %60, align 1
  %62 = load i32, i32* %6, align 4
  %63 = and i32 %62, 15
  %64 = call i8* @tohex(i32 %63)
  %65 = ptrtoint i8* %64 to i8
  %66 = load i8*, i8** %10, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %10, align 8
  store i8 %65, i8* %66, align 1
  %68 = load i8*, i8** %10, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %10, align 8
  store i8 44, i8* %68, align 1
  %70 = load i8*, i8** %10, align 8
  %71 = load i64, i64* @step_range_start, align 8
  %72 = trunc i64 %71 to i32
  %73 = call i32 @hexnumstr(i8* %70, i32 %72)
  %74 = load i8*, i8** %10, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8* %76, i8** %10, align 8
  %77 = load i8*, i8** %10, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %10, align 8
  store i8 44, i8* %77, align 1
  %79 = load i8*, i8** %10, align 8
  %80 = load i64, i64* @step_range_end, align 8
  %81 = trunc i64 %80 to i32
  %82 = call i32 @hexnumstr(i8* %79, i32 %81)
  %83 = load i8*, i8** %10, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  store i8* %85, i8** %10, align 8
  %86 = load i8*, i8** %10, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %10, align 8
  store i8 0, i8* %86, align 1
  %88 = load i8*, i8** %8, align 8
  %89 = call i32 @putpkt(i8* %88)
  %90 = load i8*, i8** %8, align 8
  %91 = load %struct.remote_state*, %struct.remote_state** %7, align 8
  %92 = getelementptr inbounds %struct.remote_state, %struct.remote_state* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @getpkt(i8* %90, i32 %93, i32 0)
  %95 = load i8*, i8** %8, align 8
  %96 = call i64 @packet_ok(i8* %95, %struct.TYPE_4__* @remote_protocol_E)
  %97 = load i64, i64* @PACKET_OK, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %51
  br label %180

100:                                              ; preds = %51
  br label %101

101:                                              ; preds = %100, %47
  br label %142

102:                                              ; preds = %43
  %103 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @remote_protocol_e, i32 0, i32 0), align 8
  %104 = load i64, i64* @PACKET_DISABLE, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %141

106:                                              ; preds = %102
  %107 = load i8*, i8** %8, align 8
  store i8* %107, i8** %10, align 8
  %108 = load i8*, i8** %10, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %10, align 8
  store i8 101, i8* %108, align 1
  %110 = load i8*, i8** %10, align 8
  %111 = load i64, i64* @step_range_start, align 8
  %112 = trunc i64 %111 to i32
  %113 = call i32 @hexnumstr(i8* %110, i32 %112)
  %114 = load i8*, i8** %10, align 8
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i8, i8* %114, i64 %115
  store i8* %116, i8** %10, align 8
  %117 = load i8*, i8** %10, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %10, align 8
  store i8 44, i8* %117, align 1
  %119 = load i8*, i8** %10, align 8
  %120 = load i64, i64* @step_range_end, align 8
  %121 = trunc i64 %120 to i32
  %122 = call i32 @hexnumstr(i8* %119, i32 %121)
  %123 = load i8*, i8** %10, align 8
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds i8, i8* %123, i64 %124
  store i8* %125, i8** %10, align 8
  %126 = load i8*, i8** %10, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %10, align 8
  store i8 0, i8* %126, align 1
  %128 = load i8*, i8** %8, align 8
  %129 = call i32 @putpkt(i8* %128)
  %130 = load i8*, i8** %8, align 8
  %131 = load %struct.remote_state*, %struct.remote_state** %7, align 8
  %132 = getelementptr inbounds %struct.remote_state, %struct.remote_state* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @getpkt(i8* %130, i32 %133, i32 0)
  %135 = load i8*, i8** %8, align 8
  %136 = call i64 @packet_ok(i8* %135, %struct.TYPE_4__* @remote_protocol_e)
  %137 = load i64, i64* @PACKET_OK, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %106
  br label %180

140:                                              ; preds = %106
  br label %141

141:                                              ; preds = %140, %102
  br label %142

142:                                              ; preds = %141, %101
  br label %143

143:                                              ; preds = %142, %40, %37
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* @TARGET_SIGNAL_0, align 4
  %146 = icmp ne i32 %144, %145
  br i1 %146, label %147, label %170

147:                                              ; preds = %143
  %148 = load i32, i32* %5, align 4
  %149 = icmp ne i32 %148, 0
  %150 = zext i1 %149 to i64
  %151 = select i1 %149, i32 83, i32 67
  %152 = trunc i32 %151 to i8
  %153 = load i8*, i8** %8, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 0
  store i8 %152, i8* %154, align 1
  %155 = load i32, i32* %6, align 4
  %156 = ashr i32 %155, 4
  %157 = and i32 %156, 15
  %158 = call i8* @tohex(i32 %157)
  %159 = ptrtoint i8* %158 to i8
  %160 = load i8*, i8** %8, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 1
  store i8 %159, i8* %161, align 1
  %162 = load i32, i32* %6, align 4
  %163 = and i32 %162, 15
  %164 = call i8* @tohex(i32 %163)
  %165 = ptrtoint i8* %164 to i8
  %166 = load i8*, i8** %8, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 2
  store i8 %165, i8* %167, align 1
  %168 = load i8*, i8** %8, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 3
  store i8 0, i8* %169, align 1
  br label %177

170:                                              ; preds = %143
  %171 = load i8*, i8** %8, align 8
  %172 = load i32, i32* %5, align 4
  %173 = icmp ne i32 %172, 0
  %174 = zext i1 %173 to i64
  %175 = select i1 %173, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)
  %176 = call i32 @strcpy(i8* %171, i8* %175)
  br label %177

177:                                              ; preds = %170, %147
  %178 = load i8*, i8** %8, align 8
  %179 = call i32 @putpkt(i8* %178)
  br label %180

180:                                              ; preds = %177, %139, %99, %28
  ret void
}

declare dso_local %struct.remote_state* @get_remote_state(...) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @PIDGET(i32) #1

declare dso_local i32 @target_resume_hook(...) #1

declare dso_local i64 @remote_vcont_resume(i32, i32, i32) #1

declare dso_local i32 @set_thread(i32, i32) #1

declare dso_local i8* @tohex(i32) #1

declare dso_local i32 @hexnumstr(i8*, i32) #1

declare dso_local i32 @putpkt(i8*) #1

declare dso_local i32 @getpkt(i8*, i32, i32) #1

declare dso_local i64 @packet_ok(i8*, %struct.TYPE_4__*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
