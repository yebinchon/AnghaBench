; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/linux/extr_linux_ptrace.c_linux_ptrace.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/linux/extr_linux_ptrace.c_linux_ptrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_ptrace_args = type { i32, i32, i64, i64 }

@PT_TRACE_ME = common dso_local global i32 0, align 4
@PT_WRITE_I = common dso_local global i32 0, align 4
@PT_WRITE_D = common dso_local global i32 0, align 4
@PT_CONTINUE = common dso_local global i32 0, align 4
@PT_KILL = common dso_local global i32 0, align 4
@PT_STEP = common dso_local global i32 0, align 4
@PT_ATTACH = common dso_local global i32 0, align 4
@PT_DETACH = common dso_local global i32 0, align 4
@PT_SYSCALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"ptrace(%ld, ...) not implemented; returning EINVAL\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_ptrace(%struct.thread* %0, %struct.linux_ptrace_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_ptrace_args*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_ptrace_args* %1, %struct.linux_ptrace_args** %5, align 8
  %10 = load %struct.linux_ptrace_args*, %struct.linux_ptrace_args** %5, align 8
  %11 = getelementptr inbounds %struct.linux_ptrace_args, %struct.linux_ptrace_args* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %7, align 8
  %13 = load %struct.linux_ptrace_args*, %struct.linux_ptrace_args** %5, align 8
  %14 = getelementptr inbounds %struct.linux_ptrace_args, %struct.linux_ptrace_args* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** %6, align 8
  %17 = load %struct.linux_ptrace_args*, %struct.linux_ptrace_args** %5, align 8
  %18 = getelementptr inbounds %struct.linux_ptrace_args, %struct.linux_ptrace_args* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %217 [
    i32 128, label %20
    i32 138, label %24
    i32 139, label %24
    i32 137, label %53
    i32 135, label %63
    i32 136, label %72
    i32 134, label %81
    i32 145, label %91
    i32 140, label %105
    i32 130, label %114
    i32 143, label %128
    i32 131, label %137
    i32 146, label %146
    i32 144, label %155
    i32 129, label %169
    i32 132, label %183
    i32 141, label %190
    i32 142, label %197
    i32 133, label %207
  ]

20:                                               ; preds = %2
  %21 = load %struct.thread*, %struct.thread** %4, align 8
  %22 = load i32, i32* @PT_TRACE_ME, align 4
  %23 = call i32 @kern_ptrace(%struct.thread* %21, i32 %22, i64 0, i8* null, i32 0)
  store i32 %23, i32* %8, align 4
  br label %224

24:                                               ; preds = %2, %2
  %25 = load %struct.thread*, %struct.thread** %4, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load %struct.linux_ptrace_args*, %struct.linux_ptrace_args** %5, align 8
  %29 = getelementptr inbounds %struct.linux_ptrace_args, %struct.linux_ptrace_args* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 @linux_ptrace_peek(%struct.thread* %25, i64 %26, i8* %27, i8* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %24
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %3, align 4
  br label %226

38:                                               ; preds = %24
  %39 = load %struct.thread*, %struct.thread** %4, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load %struct.linux_ptrace_args*, %struct.linux_ptrace_args** %5, align 8
  %42 = getelementptr inbounds %struct.linux_ptrace_args, %struct.linux_ptrace_args* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 4
  %45 = inttoptr i64 %44 to i8*
  %46 = load %struct.linux_ptrace_args*, %struct.linux_ptrace_args** %5, align 8
  %47 = getelementptr inbounds %struct.linux_ptrace_args, %struct.linux_ptrace_args* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 4
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to i8*
  %52 = call i32 @linux_ptrace_peek(%struct.thread* %39, i64 %40, i8* %45, i8* %51)
  store i32 %52, i32* %8, align 4
  br label %224

53:                                               ; preds = %2
  %54 = load %struct.thread*, %struct.thread** %4, align 8
  %55 = load i64, i64* %7, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = load %struct.linux_ptrace_args*, %struct.linux_ptrace_args** %5, align 8
  %58 = getelementptr inbounds %struct.linux_ptrace_args, %struct.linux_ptrace_args* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = inttoptr i64 %60 to i8*
  %62 = call i32 @linux_ptrace_peekuser(%struct.thread* %54, i64 %55, i8* %56, i8* %61)
  store i32 %62, i32* %8, align 4
  br label %224

63:                                               ; preds = %2
  %64 = load %struct.thread*, %struct.thread** %4, align 8
  %65 = load i32, i32* @PT_WRITE_I, align 4
  %66 = load i64, i64* %7, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = load %struct.linux_ptrace_args*, %struct.linux_ptrace_args** %5, align 8
  %69 = getelementptr inbounds %struct.linux_ptrace_args, %struct.linux_ptrace_args* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @kern_ptrace(%struct.thread* %64, i32 %65, i64 %66, i8* %67, i32 %70)
  store i32 %71, i32* %8, align 4
  br label %224

72:                                               ; preds = %2
  %73 = load %struct.thread*, %struct.thread** %4, align 8
  %74 = load i32, i32* @PT_WRITE_D, align 4
  %75 = load i64, i64* %7, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = load %struct.linux_ptrace_args*, %struct.linux_ptrace_args** %5, align 8
  %78 = getelementptr inbounds %struct.linux_ptrace_args, %struct.linux_ptrace_args* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @kern_ptrace(%struct.thread* %73, i32 %74, i64 %75, i8* %76, i32 %79)
  store i32 %80, i32* %8, align 4
  br label %224

81:                                               ; preds = %2
  %82 = load %struct.thread*, %struct.thread** %4, align 8
  %83 = load i64, i64* %7, align 8
  %84 = load i8*, i8** %6, align 8
  %85 = load %struct.linux_ptrace_args*, %struct.linux_ptrace_args** %5, align 8
  %86 = getelementptr inbounds %struct.linux_ptrace_args, %struct.linux_ptrace_args* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = inttoptr i64 %88 to i8*
  %90 = call i32 @linux_ptrace_pokeuser(%struct.thread* %82, i64 %83, i8* %84, i8* %89)
  store i32 %90, i32* %8, align 4
  br label %224

91:                                               ; preds = %2
  %92 = load %struct.linux_ptrace_args*, %struct.linux_ptrace_args** %5, align 8
  %93 = getelementptr inbounds %struct.linux_ptrace_args, %struct.linux_ptrace_args* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @map_signum(i32 %94, i32* %9)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  br label %224

99:                                               ; preds = %91
  %100 = load %struct.thread*, %struct.thread** %4, align 8
  %101 = load i32, i32* @PT_CONTINUE, align 4
  %102 = load i64, i64* %7, align 8
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @kern_ptrace(%struct.thread* %100, i32 %101, i64 %102, i8* inttoptr (i64 1 to i8*), i32 %103)
  store i32 %104, i32* %8, align 4
  br label %224

105:                                              ; preds = %2
  %106 = load %struct.thread*, %struct.thread** %4, align 8
  %107 = load i32, i32* @PT_KILL, align 4
  %108 = load i64, i64* %7, align 8
  %109 = load i8*, i8** %6, align 8
  %110 = load %struct.linux_ptrace_args*, %struct.linux_ptrace_args** %5, align 8
  %111 = getelementptr inbounds %struct.linux_ptrace_args, %struct.linux_ptrace_args* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @kern_ptrace(%struct.thread* %106, i32 %107, i64 %108, i8* %109, i32 %112)
  store i32 %113, i32* %8, align 4
  br label %224

114:                                              ; preds = %2
  %115 = load %struct.linux_ptrace_args*, %struct.linux_ptrace_args** %5, align 8
  %116 = getelementptr inbounds %struct.linux_ptrace_args, %struct.linux_ptrace_args* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @map_signum(i32 %117, i32* %9)
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* %8, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %114
  br label %224

122:                                              ; preds = %114
  %123 = load %struct.thread*, %struct.thread** %4, align 8
  %124 = load i32, i32* @PT_STEP, align 4
  %125 = load i64, i64* %7, align 8
  %126 = load i32, i32* %9, align 4
  %127 = call i32 @kern_ptrace(%struct.thread* %123, i32 %124, i64 %125, i8* inttoptr (i64 1 to i8*), i32 %126)
  store i32 %127, i32* %8, align 4
  br label %224

128:                                              ; preds = %2
  %129 = load %struct.thread*, %struct.thread** %4, align 8
  %130 = load i64, i64* %7, align 8
  %131 = load %struct.linux_ptrace_args*, %struct.linux_ptrace_args** %5, align 8
  %132 = getelementptr inbounds %struct.linux_ptrace_args, %struct.linux_ptrace_args* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = sext i32 %133 to i64
  %135 = inttoptr i64 %134 to i8*
  %136 = call i32 @linux_ptrace_getregs(%struct.thread* %129, i64 %130, i8* %135)
  store i32 %136, i32* %8, align 4
  br label %224

137:                                              ; preds = %2
  %138 = load %struct.thread*, %struct.thread** %4, align 8
  %139 = load i64, i64* %7, align 8
  %140 = load %struct.linux_ptrace_args*, %struct.linux_ptrace_args** %5, align 8
  %141 = getelementptr inbounds %struct.linux_ptrace_args, %struct.linux_ptrace_args* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  %144 = inttoptr i64 %143 to i8*
  %145 = call i32 @linux_ptrace_setregs(%struct.thread* %138, i64 %139, i8* %144)
  store i32 %145, i32* %8, align 4
  br label %224

146:                                              ; preds = %2
  %147 = load %struct.thread*, %struct.thread** %4, align 8
  %148 = load i32, i32* @PT_ATTACH, align 4
  %149 = load i64, i64* %7, align 8
  %150 = load i8*, i8** %6, align 8
  %151 = load %struct.linux_ptrace_args*, %struct.linux_ptrace_args** %5, align 8
  %152 = getelementptr inbounds %struct.linux_ptrace_args, %struct.linux_ptrace_args* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @kern_ptrace(%struct.thread* %147, i32 %148, i64 %149, i8* %150, i32 %153)
  store i32 %154, i32* %8, align 4
  br label %224

155:                                              ; preds = %2
  %156 = load %struct.linux_ptrace_args*, %struct.linux_ptrace_args** %5, align 8
  %157 = getelementptr inbounds %struct.linux_ptrace_args, %struct.linux_ptrace_args* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @map_signum(i32 %158, i32* %9)
  store i32 %159, i32* %8, align 4
  %160 = load i32, i32* %8, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %155
  br label %224

163:                                              ; preds = %155
  %164 = load %struct.thread*, %struct.thread** %4, align 8
  %165 = load i32, i32* @PT_DETACH, align 4
  %166 = load i64, i64* %7, align 8
  %167 = load i32, i32* %9, align 4
  %168 = call i32 @kern_ptrace(%struct.thread* %164, i32 %165, i64 %166, i8* inttoptr (i64 1 to i8*), i32 %167)
  store i32 %168, i32* %8, align 4
  br label %224

169:                                              ; preds = %2
  %170 = load %struct.linux_ptrace_args*, %struct.linux_ptrace_args** %5, align 8
  %171 = getelementptr inbounds %struct.linux_ptrace_args, %struct.linux_ptrace_args* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @map_signum(i32 %172, i32* %9)
  store i32 %173, i32* %8, align 4
  %174 = load i32, i32* %8, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %169
  br label %224

177:                                              ; preds = %169
  %178 = load %struct.thread*, %struct.thread** %4, align 8
  %179 = load i32, i32* @PT_SYSCALL, align 4
  %180 = load i64, i64* %7, align 8
  %181 = load i32, i32* %9, align 4
  %182 = call i32 @kern_ptrace(%struct.thread* %178, i32 %179, i64 %180, i8* inttoptr (i64 1 to i8*), i32 %181)
  store i32 %182, i32* %8, align 4
  br label %224

183:                                              ; preds = %2
  %184 = load %struct.thread*, %struct.thread** %4, align 8
  %185 = load i64, i64* %7, align 8
  %186 = load %struct.linux_ptrace_args*, %struct.linux_ptrace_args** %5, align 8
  %187 = getelementptr inbounds %struct.linux_ptrace_args, %struct.linux_ptrace_args* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @linux_ptrace_setoptions(%struct.thread* %184, i64 %185, i32 %188)
  store i32 %189, i32* %8, align 4
  br label %224

190:                                              ; preds = %2
  %191 = load %struct.thread*, %struct.thread** %4, align 8
  %192 = load i64, i64* %7, align 8
  %193 = load %struct.linux_ptrace_args*, %struct.linux_ptrace_args** %5, align 8
  %194 = getelementptr inbounds %struct.linux_ptrace_args, %struct.linux_ptrace_args* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @linux_ptrace_getsiginfo(%struct.thread* %191, i64 %192, i32 %195)
  store i32 %196, i32* %8, align 4
  br label %224

197:                                              ; preds = %2
  %198 = load %struct.thread*, %struct.thread** %4, align 8
  %199 = load i64, i64* %7, align 8
  %200 = load %struct.linux_ptrace_args*, %struct.linux_ptrace_args** %5, align 8
  %201 = getelementptr inbounds %struct.linux_ptrace_args, %struct.linux_ptrace_args* %200, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.linux_ptrace_args*, %struct.linux_ptrace_args** %5, align 8
  %204 = getelementptr inbounds %struct.linux_ptrace_args, %struct.linux_ptrace_args* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @linux_ptrace_getregset(%struct.thread* %198, i64 %199, i64 %202, i32 %205)
  store i32 %206, i32* %8, align 4
  br label %224

207:                                              ; preds = %2
  %208 = load %struct.thread*, %struct.thread** %4, align 8
  %209 = load i64, i64* %7, align 8
  %210 = load %struct.linux_ptrace_args*, %struct.linux_ptrace_args** %5, align 8
  %211 = getelementptr inbounds %struct.linux_ptrace_args, %struct.linux_ptrace_args* %210, i32 0, i32 2
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.linux_ptrace_args*, %struct.linux_ptrace_args** %5, align 8
  %214 = getelementptr inbounds %struct.linux_ptrace_args, %struct.linux_ptrace_args* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @linux_ptrace_seize(%struct.thread* %208, i64 %209, i64 %212, i32 %215)
  store i32 %216, i32* %8, align 4
  br label %224

217:                                              ; preds = %2
  %218 = load %struct.thread*, %struct.thread** %4, align 8
  %219 = load %struct.linux_ptrace_args*, %struct.linux_ptrace_args** %5, align 8
  %220 = getelementptr inbounds %struct.linux_ptrace_args, %struct.linux_ptrace_args* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @linux_msg(%struct.thread* %218, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %221)
  %223 = load i32, i32* @EINVAL, align 4
  store i32 %223, i32* %8, align 4
  br label %224

224:                                              ; preds = %217, %207, %197, %190, %183, %177, %176, %163, %162, %146, %137, %128, %122, %121, %105, %99, %98, %81, %72, %63, %53, %38, %20
  %225 = load i32, i32* %8, align 4
  store i32 %225, i32* %3, align 4
  br label %226

226:                                              ; preds = %224, %36
  %227 = load i32, i32* %3, align 4
  ret i32 %227
}

declare dso_local i32 @kern_ptrace(%struct.thread*, i32, i64, i8*, i32) #1

declare dso_local i32 @linux_ptrace_peek(%struct.thread*, i64, i8*, i8*) #1

declare dso_local i32 @linux_ptrace_peekuser(%struct.thread*, i64, i8*, i8*) #1

declare dso_local i32 @linux_ptrace_pokeuser(%struct.thread*, i64, i8*, i8*) #1

declare dso_local i32 @map_signum(i32, i32*) #1

declare dso_local i32 @linux_ptrace_getregs(%struct.thread*, i64, i8*) #1

declare dso_local i32 @linux_ptrace_setregs(%struct.thread*, i64, i8*) #1

declare dso_local i32 @linux_ptrace_setoptions(%struct.thread*, i64, i32) #1

declare dso_local i32 @linux_ptrace_getsiginfo(%struct.thread*, i64, i32) #1

declare dso_local i32 @linux_ptrace_getregset(%struct.thread*, i64, i64, i32) #1

declare dso_local i32 @linux_ptrace_seize(%struct.thread*, i64, i64, i32) #1

declare dso_local i32 @linux_msg(%struct.thread*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
