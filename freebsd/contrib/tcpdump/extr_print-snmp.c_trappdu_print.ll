; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-snmp.c_trappdu_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-snmp.c_trappdu_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@BE_OID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"[enterprise!=OID]\00", align 1
@BE_INETADDR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"[agent-addr!=INETADDR]\00", align 1
@BE_INT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"[generic-trap!=INT]\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"[specific-trap!=INT]\00", align 1
@GT_ENTERPRISE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"[specific-trap(%d)!=0]\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c" s=%d\00", align 1
@BE_UNS = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [24 x i8] c"[time-stamp!=TIMETICKS]\00", align 1
@TRAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @trappdu_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trappdu_print(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.be, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [20 x i8], align 16
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str to i32*))
  %13 = load i32*, i32** %4, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @asn1_parse(i32* %13, i32* %14, i32 %15, %struct.be* %7)
  store i32 %16, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %192

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.be, %struct.be* %7, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @BE_OID, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @ND_PRINT(i32* bitcast ([18 x i8]* @.str.1 to i32*))
  %27 = load i32*, i32** %4, align 8
  %28 = call i64 @asn1_print(i32* %27, %struct.be* %7)
  br label %192

29:                                               ; preds = %19
  %30 = load i32*, i32** %4, align 8
  %31 = call i64 @asn1_print(i32* %30, %struct.be* %7)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %192

34:                                               ; preds = %29
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %6, align 4
  %37 = sub nsw i32 %36, %35
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  store i32* %41, i32** %5, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str to i32*))
  %44 = load i32*, i32** %4, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @asn1_parse(i32* %44, i32* %45, i32 %46, %struct.be* %7)
  store i32 %47, i32* %8, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %34
  br label %192

50:                                               ; preds = %34
  %51 = getelementptr inbounds %struct.be, %struct.be* %7, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @BE_INETADDR, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @ND_PRINT(i32* bitcast ([23 x i8]* @.str.2 to i32*))
  %58 = load i32*, i32** %4, align 8
  %59 = call i64 @asn1_print(i32* %58, %struct.be* %7)
  br label %192

60:                                               ; preds = %50
  %61 = load i32*, i32** %4, align 8
  %62 = call i64 @asn1_print(i32* %61, %struct.be* %7)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %192

65:                                               ; preds = %60
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %6, align 4
  %68 = sub nsw i32 %67, %66
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32*, i32** %5, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32* %72, i32** %5, align 8
  %73 = load i32*, i32** %4, align 8
  %74 = load i32*, i32** %5, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @asn1_parse(i32* %73, i32* %74, i32 %75, %struct.be* %7)
  store i32 %76, i32* %8, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %65
  br label %192

79:                                               ; preds = %65
  %80 = getelementptr inbounds %struct.be, %struct.be* %7, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @BE_INT, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load i32*, i32** %4, align 8
  %86 = call i32 @ND_PRINT(i32* bitcast ([20 x i8]* @.str.3 to i32*))
  %87 = load i32*, i32** %4, align 8
  %88 = call i64 @asn1_print(i32* %87, %struct.be* %7)
  br label %192

89:                                               ; preds = %79
  %90 = getelementptr inbounds %struct.be, %struct.be* %7, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  store i32 %92, i32* %9, align 4
  %93 = load i32*, i32** %4, align 8
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @DECODE_GenericTrap(i32 %94)
  %96 = sext i32 %95 to i64
  %97 = inttoptr i64 %96 to i32*
  %98 = call i32 @ND_PRINT(i32* %97)
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %6, align 4
  %101 = sub nsw i32 %100, %99
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %8, align 4
  %103 = load i32*, i32** %5, align 8
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  store i32* %105, i32** %5, align 8
  %106 = load i32*, i32** %4, align 8
  %107 = load i32*, i32** %5, align 8
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @asn1_parse(i32* %106, i32* %107, i32 %108, %struct.be* %7)
  store i32 %109, i32* %8, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %89
  br label %192

112:                                              ; preds = %89
  %113 = getelementptr inbounds %struct.be, %struct.be* %7, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @BE_INT, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %112
  %118 = load i32*, i32** %4, align 8
  %119 = call i32 @ND_PRINT(i32* bitcast ([21 x i8]* @.str.5 to i32*))
  %120 = load i32*, i32** %4, align 8
  %121 = call i64 @asn1_print(i32* %120, %struct.be* %7)
  br label %192

122:                                              ; preds = %112
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* @GT_ENTERPRISE, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %126, label %140

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.be, %struct.be* %7, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %126
  %132 = load i32*, i32** %4, align 8
  %133 = getelementptr inbounds %struct.be, %struct.be* %7, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = sext i32 %135 to i64
  %137 = inttoptr i64 %136 to i32*
  %138 = call i32 @ND_PRINT(i32* %137)
  br label %139

139:                                              ; preds = %131, %126
  br label %148

140:                                              ; preds = %122
  %141 = load i32*, i32** %4, align 8
  %142 = getelementptr inbounds %struct.be, %struct.be* %7, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = sext i32 %144 to i64
  %146 = inttoptr i64 %145 to i32*
  %147 = call i32 @ND_PRINT(i32* %146)
  br label %148

148:                                              ; preds = %140, %139
  %149 = load i32, i32* %8, align 4
  %150 = load i32, i32* %6, align 4
  %151 = sub nsw i32 %150, %149
  store i32 %151, i32* %6, align 4
  %152 = load i32, i32* %8, align 4
  %153 = load i32*, i32** %5, align 8
  %154 = sext i32 %152 to i64
  %155 = getelementptr inbounds i32, i32* %153, i64 %154
  store i32* %155, i32** %5, align 8
  %156 = load i32*, i32** %4, align 8
  %157 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str to i32*))
  %158 = load i32*, i32** %4, align 8
  %159 = load i32*, i32** %5, align 8
  %160 = load i32, i32* %6, align 4
  %161 = call i32 @asn1_parse(i32* %158, i32* %159, i32 %160, %struct.be* %7)
  store i32 %161, i32* %8, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %148
  br label %192

164:                                              ; preds = %148
  %165 = getelementptr inbounds %struct.be, %struct.be* %7, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @BE_UNS, align 8
  %168 = icmp ne i64 %166, %167
  br i1 %168, label %169, label %174

169:                                              ; preds = %164
  %170 = load i32*, i32** %4, align 8
  %171 = call i32 @ND_PRINT(i32* bitcast ([24 x i8]* @.str.8 to i32*))
  %172 = load i32*, i32** %4, align 8
  %173 = call i64 @asn1_print(i32* %172, %struct.be* %7)
  br label %192

174:                                              ; preds = %164
  %175 = load i32*, i32** %4, align 8
  %176 = call i64 @asn1_print(i32* %175, %struct.be* %7)
  %177 = icmp slt i64 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %174
  br label %192

179:                                              ; preds = %174
  %180 = load i32, i32* %8, align 4
  %181 = load i32, i32* %6, align 4
  %182 = sub nsw i32 %181, %180
  store i32 %182, i32* %6, align 4
  %183 = load i32, i32* %8, align 4
  %184 = load i32*, i32** %5, align 8
  %185 = sext i32 %183 to i64
  %186 = getelementptr inbounds i32, i32* %184, i64 %185
  store i32* %186, i32** %5, align 8
  %187 = load i32*, i32** %4, align 8
  %188 = load i32, i32* @TRAP, align 4
  %189 = load i32*, i32** %5, align 8
  %190 = load i32, i32* %6, align 4
  %191 = call i32 @varbind_print(i32* %187, i32 %188, i32* %189, i32 %190)
  br label %192

192:                                              ; preds = %179, %178, %169, %163, %117, %111, %84, %78, %64, %55, %49, %33, %24, %18
  ret void
}

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @asn1_parse(i32*, i32*, i32, %struct.be*) #1

declare dso_local i64 @asn1_print(i32*, %struct.be*) #1

declare dso_local i32 @DECODE_GenericTrap(i32) #1

declare dso_local i32 @varbind_print(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
