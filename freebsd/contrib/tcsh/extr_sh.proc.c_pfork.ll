; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.proc.c_pfork.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.proc.c_pfork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.sigaction = type { i32, i32, i32 }
%struct.command = type { i32, i64, i32 }

@setintr = common dso_local global i64 0, align 8
@tpgrp = common dso_local global i32 0, align 4
@F_NOINTERRUPT = common dso_local global i32 0, align 4
@gointr = common dso_local global i64 0, align 8
@STRminus = common dso_local global i32 0, align 4
@child = common dso_local global i32 0, align 4
@ERR_NESTING = common dso_local global i32 0, align 4
@pchild_disabled = common dso_local global i64 0, align 8
@disabled_cleanup = common dso_local global i32 0, align 4
@FORKSLEEP = common dso_local global i32 0, align 4
@ERR_NOPROC = common dso_local global i32 0, align 4
@pcurrjob = common dso_local global %struct.TYPE_2__* null, align 8
@timesdone = common dso_local global i64 0, align 8
@SIGINT = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@parterm = common dso_local global %struct.sigaction zeroinitializer, align 4
@F_NOHUP = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@F_NICE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i64 0, align 8
@ERR_SYSTEM = common dso_local global i32 0, align 4
@F_VER = common dso_local global i32 0, align 4
@PRIO_PROCESS = common dso_local global i32 0, align 4
@SA_RESTART = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@SIGIO = common dso_local global i32 0, align 4
@SIGSYNCH = common dso_local global i32 0, align 4
@SIGTSTP = common dso_local global i32 0, align 4
@SIGTTIN = common dso_local global i32 0, align 4
@SIGTTOU = common dso_local global i32 0, align 4
@SIG_BLOCK = common dso_local global i32 0, align 4
@STRSYSTYPE = common dso_local global i32 0, align 4
@STRbsd43 = common dso_local global i32 0, align 4
@STRsys53 = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@pause = common dso_local global i32 0, align 4
@synch_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfork(%struct.command* %0, i32 %1) #0 {
  %3 = alloca %struct.command*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.command* %0, %struct.command** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %9 = load i64, i64* @setintr, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %34

11:                                               ; preds = %2
  %12 = load i32, i32* @tpgrp, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = load %struct.command*, %struct.command** %3, align 8
  %16 = getelementptr inbounds %struct.command, %struct.command* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @F_NOINTERRUPT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %14, %11
  %22 = load i64, i64* @gointr, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i64, i64* @gointr, align 8
  %26 = load i32, i32* @STRminus, align 4
  %27 = call i64 @eq(i64 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %24, %21
  %30 = phi i1 [ false, %21 ], [ %28, %24 ]
  br label %31

31:                                               ; preds = %29, %14
  %32 = phi i1 [ true, %14 ], [ %30, %29 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %31, %2
  %35 = load i32, i32* @child, align 4
  %36 = icmp eq i32 %35, 16
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* @ERR_NESTING, align 4
  %39 = call i32 (i32, ...) @stderror(i32 %38, i32 16)
  br label %40

40:                                               ; preds = %37, %34
  %41 = load i32, i32* %4, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load i64, i64* @pchild_disabled, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* @pchild_disabled, align 8
  %46 = load i32, i32* @disabled_cleanup, align 4
  %47 = call i32 @cleanup_push(i64* @pchild_disabled, i32 %46)
  br label %48

48:                                               ; preds = %43, %40
  br label %49

49:                                               ; preds = %61, %48
  %50 = call i32 (...) @fork()
  store i32 %50, i32* %5, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %62

52:                                               ; preds = %49
  %53 = load i64, i64* @setintr, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* @FORKSLEEP, align 4
  %57 = call i32 @sleep(i32 %56)
  br label %61

58:                                               ; preds = %52
  %59 = load i32, i32* @ERR_NOPROC, align 4
  %60 = call i32 (i32, ...) @stderror(i32 %59)
  br label %61

61:                                               ; preds = %58, %55
  br label %49

62:                                               ; preds = %49
  %63 = load i32, i32* %5, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %153

65:                                               ; preds = %62
  %66 = call i32 (...) @cleanup_push_mark()
  store i64 0, i64* @pchild_disabled, align 8
  %67 = call i32 (...) @settimes()
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pcurrjob, align 8
  %69 = icmp ne %struct.TYPE_2__* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pcurrjob, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  br label %76

74:                                               ; preds = %65
  %75 = call i32 (...) @getpid()
  br label %76

76:                                               ; preds = %74, %70
  %77 = phi i32 [ %73, %70 ], [ %75, %74 ]
  store i32 %77, i32* %7, align 4
  %78 = call i32 (...) @pflushall()
  store %struct.TYPE_2__* null, %struct.TYPE_2__** @pcurrjob, align 8
  store i64 0, i64* @timesdone, align 8
  %79 = load i32, i32* @child, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* @child, align 4
  %81 = load i64, i64* @setintr, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %106

83:                                               ; preds = %76
  store i64 0, i64* @setintr, align 8
  %84 = load i32, i32* @SIGINT, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load i32, i32* @SIG_IGN, align 4
  br label %91

89:                                               ; preds = %83
  %90 = load i32, i32* @SIG_DFL, align 4
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i32 [ %88, %87 ], [ %90, %89 ]
  %93 = call i32 @signal(i32 %84, i32 %92)
  %94 = load i32, i32* @SIGQUIT, align 4
  %95 = load i32, i32* %6, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = load i32, i32* @SIG_IGN, align 4
  br label %101

99:                                               ; preds = %91
  %100 = load i32, i32* @SIG_DFL, align 4
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi i32 [ %98, %97 ], [ %100, %99 ]
  %103 = call i32 @signal(i32 %94, i32 %102)
  %104 = load i32, i32* @SIGTERM, align 4
  %105 = call i64 @sigaction(i32 %104, %struct.sigaction* @parterm, %struct.sigaction* null)
  br label %124

106:                                              ; preds = %76
  %107 = load i32, i32* @tpgrp, align 4
  %108 = icmp eq i32 %107, -1
  br i1 %108, label %109, label %123

109:                                              ; preds = %106
  %110 = load %struct.command*, %struct.command** %3, align 8
  %111 = getelementptr inbounds %struct.command, %struct.command* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @F_NOINTERRUPT, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %109
  %117 = load i32, i32* @SIGINT, align 4
  %118 = load i32, i32* @SIG_IGN, align 4
  %119 = call i32 @signal(i32 %117, i32 %118)
  %120 = load i32, i32* @SIGQUIT, align 4
  %121 = load i32, i32* @SIG_IGN, align 4
  %122 = call i32 @signal(i32 %120, i32 %121)
  br label %123

123:                                              ; preds = %116, %109, %106
  br label %124

124:                                              ; preds = %123, %101
  %125 = load i32, i32* %4, align 4
  %126 = load i32, i32* %7, align 4
  %127 = call i32 @pgetty(i32 %125, i32 %126)
  %128 = load %struct.command*, %struct.command** %3, align 8
  %129 = getelementptr inbounds %struct.command, %struct.command* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @F_NOHUP, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %124
  %135 = load i32, i32* @SIGHUP, align 4
  %136 = load i32, i32* @SIG_IGN, align 4
  %137 = call i32 @signal(i32 %135, i32 %136)
  br label %138

138:                                              ; preds = %134, %124
  %139 = load %struct.command*, %struct.command** %3, align 8
  %140 = getelementptr inbounds %struct.command, %struct.command* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @F_NICE, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %138
  %146 = load %struct.command*, %struct.command** %3, align 8
  %147 = getelementptr inbounds %struct.command, %struct.command* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @SIGN_EXTEND_CHAR(i32 %148)
  store i32 %149, i32* %8, align 4
  %150 = load i32, i32* %8, align 4
  %151 = call i32 @nice(i32 %150)
  br label %152

152:                                              ; preds = %145, %138
  br label %162

153:                                              ; preds = %62
  %154 = load i32, i32* %5, align 4
  %155 = load %struct.command*, %struct.command** %3, align 8
  %156 = call i32 @palloc(i32 %154, %struct.command* %155)
  %157 = load i32, i32* %4, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %153
  %160 = call i32 @cleanup_until(i64* @pchild_disabled)
  br label %161

161:                                              ; preds = %159, %153
  br label %162

162:                                              ; preds = %161, %152
  %163 = load i32, i32* %5, align 4
  ret i32 %163
}

declare dso_local i64 @eq(i64, i32) #1

declare dso_local i32 @stderror(i32, ...) #1

declare dso_local i32 @cleanup_push(i64*, i32) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @cleanup_push_mark(...) #1

declare dso_local i32 @settimes(...) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @pflushall(...) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i64 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) #1

declare dso_local i32 @pgetty(i32, i32) #1

declare dso_local i32 @SIGN_EXTEND_CHAR(i32) #1

declare dso_local i32 @nice(i32) #1

declare dso_local i32 @palloc(i32, %struct.command*) #1

declare dso_local i32 @cleanup_until(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
