; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_print_proto.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_print_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf_pr = type { i32 }
%struct.format_opts = type { i32 }
%struct.show_state = type { i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@F_OR = common dso_local global i32 0, align 4
@IPPROTO_IP = common dso_local global i64 0, align 8
@HAVE_PROTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c" ip\00", align 1
@IPPROTO_IPV6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buf_pr*, %struct.format_opts*, %struct.show_state*)* @print_proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_proto(%struct.buf_pr* %0, %struct.format_opts* %1, %struct.show_state* %2) #0 {
  %4 = alloca %struct.buf_pr*, align 8
  %5 = alloca %struct.format_opts*, align 8
  %6 = alloca %struct.show_state*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.buf_pr* %0, %struct.buf_pr** %4, align 8
  store %struct.format_opts* %1, %struct.format_opts** %5, align 8
  store %struct.show_state* %2, %struct.show_state** %6, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.show_state*, %struct.show_state** %6, align 8
  %13 = getelementptr inbounds %struct.show_state, %struct.show_state* %12, i32 0, i32 2
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %8, align 4
  %17 = load %struct.show_state*, %struct.show_state** %6, align 8
  %18 = getelementptr inbounds %struct.show_state, %struct.show_state* %17, i32 0, i32 2
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %7, align 8
  br label %22

22:                                               ; preds = %56, %3
  %23 = load i32, i32* %8, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %67

25:                                               ; preds = %22
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %54 [
    i32 128, label %29
    i32 130, label %32
    i32 129, label %43
  ]

29:                                               ; preds = %25
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %9, align 4
  br label %55

32:                                               ; preds = %25
  store i32 1, i32* %10, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @F_OR, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %39, %32
  br label %55

43:                                               ; preds = %25
  store i32 1, i32* %11, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @F_OR, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %11, align 4
  br label %53

53:                                               ; preds = %50, %43
  br label %55

54:                                               ; preds = %25
  br label %56

55:                                               ; preds = %53, %42, %29
  br label %56

56:                                               ; preds = %55, %54
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %58 = call i64 @F_LEN(%struct.TYPE_6__* %57)
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = sub nsw i64 %60, %58
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %8, align 4
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %64 = call i64 @F_LEN(%struct.TYPE_6__* %63)
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i64 %64
  store %struct.TYPE_6__* %66, %struct.TYPE_6__** %7, align 8
  br label %22

67:                                               ; preds = %22
  %68 = load i32, i32* %9, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %87

70:                                               ; preds = %67
  %71 = load i32, i32* %10, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %70
  %74 = load i32, i32* %11, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %73
  %77 = load i64, i64* @IPPROTO_IP, align 8
  %78 = load %struct.show_state*, %struct.show_state** %6, align 8
  %79 = getelementptr inbounds %struct.show_state, %struct.show_state* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  %80 = load i32, i32* @HAVE_PROTO, align 4
  %81 = load %struct.show_state*, %struct.show_state** %6, align 8
  %82 = getelementptr inbounds %struct.show_state, %struct.show_state* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 8
  %85 = load %struct.buf_pr*, %struct.buf_pr** %4, align 8
  %86 = call i32 @bprintf(%struct.buf_pr* %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %175

87:                                               ; preds = %73, %70, %67
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %7, align 8
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %11, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %90, %87
  %94 = load %struct.buf_pr*, %struct.buf_pr** %4, align 8
  %95 = load %struct.format_opts*, %struct.format_opts** %5, align 8
  %96 = load %struct.show_state*, %struct.show_state** %6, align 8
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %11, align 4
  %99 = icmp sgt i32 %97, %98
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i32 130, i32 129
  %102 = call %struct.TYPE_6__* @print_opcode(%struct.buf_pr* %94, %struct.format_opts* %95, %struct.show_state* %96, i32 %101)
  store %struct.TYPE_6__* %102, %struct.TYPE_6__** %7, align 8
  br label %103

103:                                              ; preds = %93, %90
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %105 = icmp ne %struct.TYPE_6__* %104, null
  br i1 %105, label %106, label %123

106:                                              ; preds = %103
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @F_OR, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %106
  %114 = load %struct.buf_pr*, %struct.buf_pr** %4, align 8
  %115 = load %struct.format_opts*, %struct.format_opts** %5, align 8
  %116 = load %struct.show_state*, %struct.show_state** %6, align 8
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* %11, align 4
  %119 = icmp sgt i32 %117, %118
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i32 129, i32 130
  %122 = call %struct.TYPE_6__* @print_opcode(%struct.buf_pr* %114, %struct.format_opts* %115, %struct.show_state* %116, i32 %121)
  store %struct.TYPE_6__* %122, %struct.TYPE_6__** %7, align 8
  br label %123

123:                                              ; preds = %113, %106, %103
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %125 = icmp eq %struct.TYPE_6__* %124, null
  br i1 %125, label %133, label %126

126:                                              ; preds = %123
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @F_OR, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %158

133:                                              ; preds = %126, %123
  %134 = load i32, i32* %9, align 4
  store i32 %134, i32* %8, align 4
  br label %135

135:                                              ; preds = %154, %133
  %136 = load i32, i32* %8, align 4
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %157

138:                                              ; preds = %135
  %139 = load %struct.buf_pr*, %struct.buf_pr** %4, align 8
  %140 = load %struct.format_opts*, %struct.format_opts** %5, align 8
  %141 = load %struct.show_state*, %struct.show_state** %6, align 8
  %142 = call %struct.TYPE_6__* @print_opcode(%struct.buf_pr* %139, %struct.format_opts* %140, %struct.show_state* %141, i32 128)
  store %struct.TYPE_6__* %142, %struct.TYPE_6__** %7, align 8
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %144 = icmp eq %struct.TYPE_6__* %143, null
  br i1 %144, label %152, label %145

145:                                              ; preds = %138
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @F_OR, align 4
  %150 = and i32 %148, %149
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %145, %138
  br label %157

153:                                              ; preds = %145
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %8, align 4
  %156 = add nsw i32 %155, -1
  store i32 %156, i32* %8, align 4
  br label %135

157:                                              ; preds = %152, %135
  br label %158

158:                                              ; preds = %157, %126
  %159 = load i32, i32* @HAVE_PROTO, align 4
  %160 = load %struct.show_state*, %struct.show_state** %6, align 8
  %161 = getelementptr inbounds %struct.show_state, %struct.show_state* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = or i32 %162, %159
  store i32 %163, i32* %161, align 8
  %164 = load %struct.show_state*, %struct.show_state** %6, align 8
  %165 = getelementptr inbounds %struct.show_state, %struct.show_state* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %175

168:                                              ; preds = %158
  %169 = load i32, i32* %11, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %168
  %172 = load i64, i64* @IPPROTO_IPV6, align 8
  %173 = load %struct.show_state*, %struct.show_state** %6, align 8
  %174 = getelementptr inbounds %struct.show_state, %struct.show_state* %173, i32 0, i32 0
  store i64 %172, i64* %174, align 8
  br label %175

175:                                              ; preds = %76, %171, %168, %158
  ret void
}

declare dso_local i64 @F_LEN(%struct.TYPE_6__*) #1

declare dso_local i32 @bprintf(%struct.buf_pr*, i8*) #1

declare dso_local %struct.TYPE_6__* @print_opcode(%struct.buf_pr*, %struct.format_opts*, %struct.show_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
