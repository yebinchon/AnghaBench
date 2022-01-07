; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_privmsg.c_uni_decode_body_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_privmsg.c_uni_decode_body_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%union.uni_msgall*, %struct.uni_msg*, i32, %struct.uni_iehdr*, i32, %struct.unicx*)* }
%union.uni_msgall = type { i32 }
%struct.uni_msg = type { i32*, i32* }
%struct.uni_iehdr = type { i32, i32, i32 }
%struct.unicx = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.iedecl = type { i32, i32 }

@UNI_IE_UNREC = common dso_local global i32 0, align 4
@UNI_IERR_UNK = common dso_local global i32 0, align 4
@UNI_IE_ERROR = common dso_local global i32 0, align 4
@uni_msgtable = common dso_local global %struct.TYPE_6__** null, align 8
@UNIFL_ACCESS = common dso_local global i32 0, align 4
@UNI_IERR_ACC = common dso_local global i32 0, align 4
@UNI_IERR_BAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"bad decode return\00", align 1
@UNI_IE_REPEAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.uni_msg*, %union.uni_msgall*, %struct.unicx*)* @uni_decode_body_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uni_decode_body_internal(i32 %0, %struct.uni_msg* %1, %union.uni_msgall* %2, %struct.unicx* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.uni_msg*, align 8
  %7 = alloca %union.uni_msgall*, align 8
  %8 = alloca %struct.unicx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.uni_iehdr, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.iedecl*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.uni_msg* %1, %struct.uni_msg** %6, align 8
  store %union.uni_msgall* %2, %union.uni_msgall** %7, align 8
  store %struct.unicx* %3, %struct.unicx** %8, align 8
  store i32 0, i32* %13, align 4
  %16 = load %struct.unicx*, %struct.unicx** %8, align 8
  %17 = getelementptr inbounds %struct.unicx, %struct.unicx* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = load %struct.unicx*, %struct.unicx** %8, align 8
  %19 = getelementptr inbounds %struct.unicx, %struct.unicx* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  br label %22

22:                                               ; preds = %160, %60, %4
  %23 = load %struct.uni_msg*, %struct.uni_msg** %6, align 8
  %24 = call i32 @uni_msg_len(%struct.uni_msg* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %161

26:                                               ; preds = %22
  %27 = load %struct.uni_msg*, %struct.uni_msg** %6, align 8
  %28 = load %struct.unicx*, %struct.unicx** %8, align 8
  %29 = call i64 @uni_decode_ie_hdr(i32* %9, %struct.uni_iehdr* %10, %struct.uni_msg* %27, %struct.unicx* %28, i32* %11)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 -1, i32* %11, align 4
  br label %32

32:                                               ; preds = %31, %26
  %33 = load i32, i32* %9, align 4
  %34 = getelementptr inbounds %struct.uni_iehdr, %struct.uni_iehdr* %10, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.iedecl* @GET_IEDECL(i32 %33, i32 %35)
  store %struct.iedecl* %36, %struct.iedecl** %12, align 8
  %37 = icmp eq %struct.iedecl* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @UNI_IE_UNREC, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %67

42:                                               ; preds = %38, %32
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.uni_msg*, %struct.uni_msg** %6, align 8
  %45 = call i32 @uni_msg_len(%struct.uni_msg* %44)
  %46 = icmp sgt i32 %43, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.uni_msg*, %struct.uni_msg** %6, align 8
  %49 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.uni_msg*, %struct.uni_msg** %6, align 8
  %52 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %51, i32 0, i32 0
  store i32* %50, i32** %52, align 8
  br label %60

53:                                               ; preds = %42
  %54 = load i32, i32* %11, align 4
  %55 = load %struct.uni_msg*, %struct.uni_msg** %6, align 8
  %56 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = sext i32 %54 to i64
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  store i32* %59, i32** %56, align 8
  br label %60

60:                                               ; preds = %53, %47
  %61 = load %struct.unicx*, %struct.unicx** %8, align 8
  %62 = load i32, i32* %9, align 4
  %63 = getelementptr inbounds %struct.uni_iehdr, %struct.uni_iehdr* %10, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @UNI_IERR_UNK, align 4
  %66 = call i32 @UNI_SAVE_IERR(%struct.unicx* %61, i32 %62, i32 %64, i32 %65)
  store i32 -1, i32* %13, align 4
  br label %22

67:                                               ; preds = %38
  %68 = load i32, i32* %11, align 4
  %69 = load %struct.iedecl*, %struct.iedecl** %12, align 8
  %70 = getelementptr inbounds %struct.iedecl, %struct.iedecl* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 %71, 4
  %73 = icmp sgt i32 %68, %72
  br i1 %73, label %79, label %74

74:                                               ; preds = %67
  %75 = load i32, i32* %11, align 4
  %76 = load %struct.uni_msg*, %struct.uni_msg** %6, align 8
  %77 = call i32 @uni_msg_len(%struct.uni_msg* %76)
  %78 = icmp sgt i32 %75, %77
  br i1 %78, label %79, label %92

79:                                               ; preds = %74, %67
  %80 = load i32, i32* %11, align 4
  %81 = load %struct.uni_msg*, %struct.uni_msg** %6, align 8
  %82 = call i32 @uni_msg_len(%struct.uni_msg* %81)
  %83 = icmp sgt i32 %80, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load %struct.uni_msg*, %struct.uni_msg** %6, align 8
  %86 = call i32 @uni_msg_len(%struct.uni_msg* %85)
  store i32 %86, i32* %11, align 4
  br label %87

87:                                               ; preds = %84, %79
  %88 = load i32, i32* @UNI_IE_ERROR, align 4
  %89 = getelementptr inbounds %struct.uni_iehdr, %struct.uni_iehdr* %10, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %88
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %87, %74
  %93 = load %struct.uni_msg*, %struct.uni_msg** %6, align 8
  %94 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  store i32* %98, i32** %15, align 8
  %99 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @uni_msgtable, align 8
  %100 = load i32, i32* %5, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %99, i64 %101
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32 (%union.uni_msgall*, %struct.uni_msg*, i32, %struct.uni_iehdr*, i32, %struct.unicx*)*, i32 (%union.uni_msgall*, %struct.uni_msg*, i32, %struct.uni_iehdr*, i32, %struct.unicx*)** %104, align 8
  %106 = load %union.uni_msgall*, %union.uni_msgall** %7, align 8
  %107 = load %struct.uni_msg*, %struct.uni_msg** %6, align 8
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %11, align 4
  %110 = load %struct.unicx*, %struct.unicx** %8, align 8
  %111 = call i32 %105(%union.uni_msgall* %106, %struct.uni_msg* %107, i32 %108, %struct.uni_iehdr* %10, i32 %109, %struct.unicx* %110)
  store i32 %111, i32* %14, align 4
  %112 = load i32*, i32** %15, align 8
  %113 = load %struct.uni_msg*, %struct.uni_msg** %6, align 8
  %114 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %113, i32 0, i32 0
  store i32* %112, i32** %114, align 8
  %115 = load i32, i32* %14, align 4
  switch i32 %115, label %146 [
    i32 128, label %116
    i32 129, label %117
    i32 130, label %124
  ]

116:                                              ; preds = %92
  br label %148

117:                                              ; preds = %92
  %118 = load %struct.unicx*, %struct.unicx** %8, align 8
  %119 = load i32, i32* %9, align 4
  %120 = getelementptr inbounds %struct.uni_iehdr, %struct.uni_iehdr* %10, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @UNI_IERR_UNK, align 4
  %123 = call i32 @UNI_SAVE_IERR(%struct.unicx* %118, i32 %119, i32 %121, i32 %122)
  store i32 -1, i32* %13, align 4
  br label %148

124:                                              ; preds = %92
  %125 = load %struct.iedecl*, %struct.iedecl** %12, align 8
  %126 = getelementptr inbounds %struct.iedecl, %struct.iedecl* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @UNIFL_ACCESS, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %124
  %132 = load %struct.unicx*, %struct.unicx** %8, align 8
  %133 = load i32, i32* %9, align 4
  %134 = getelementptr inbounds %struct.uni_iehdr, %struct.uni_iehdr* %10, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @UNI_IERR_ACC, align 4
  %137 = call i32 @UNI_SAVE_IERR(%struct.unicx* %132, i32 %133, i32 %135, i32 %136)
  br label %145

138:                                              ; preds = %124
  %139 = load %struct.unicx*, %struct.unicx** %8, align 8
  %140 = load i32, i32* %9, align 4
  %141 = getelementptr inbounds %struct.uni_iehdr, %struct.uni_iehdr* %10, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @UNI_IERR_BAD, align 4
  %144 = call i32 @UNI_SAVE_IERR(%struct.unicx* %139, i32 %140, i32 %142, i32 %143)
  br label %145

145:                                              ; preds = %138, %131
  store i32 -1, i32* %13, align 4
  br label %148

146:                                              ; preds = %92
  %147 = call i32 @PANIC(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %148

148:                                              ; preds = %146, %145, %117, %116
  %149 = load i32, i32* %9, align 4
  %150 = load %struct.unicx*, %struct.unicx** %8, align 8
  %151 = getelementptr inbounds %struct.unicx, %struct.unicx* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 8
  %152 = load i32, i32* %9, align 4
  %153 = load i32, i32* @UNI_IE_REPEAT, align 4
  %154 = icmp ne i32 %152, %153
  br i1 %154, label %155, label %160

155:                                              ; preds = %148
  %156 = load %struct.unicx*, %struct.unicx** %8, align 8
  %157 = getelementptr inbounds %struct.unicx, %struct.unicx* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  store i64 0, i64* %159, align 8
  br label %160

160:                                              ; preds = %155, %148
  br label %22

161:                                              ; preds = %22
  %162 = load i32, i32* %13, align 4
  ret i32 %162
}

declare dso_local i32 @uni_msg_len(%struct.uni_msg*) #1

declare dso_local i64 @uni_decode_ie_hdr(i32*, %struct.uni_iehdr*, %struct.uni_msg*, %struct.unicx*, i32*) #1

declare dso_local %struct.iedecl* @GET_IEDECL(i32, i32) #1

declare dso_local i32 @UNI_SAVE_IERR(%struct.unicx*, i32, i32, i32) #1

declare dso_local i32 @PANIC(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
