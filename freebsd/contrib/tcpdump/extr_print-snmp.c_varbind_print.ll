; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-snmp.c_varbind_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-snmp.c_varbind_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@BE_SEQ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"[!SEQ of varbind]\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"[%d extra after SEQ of varbind]\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"[!varbind]\00", align 1
@BE_OID = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"[objName!=OID]\00", align 1
@GETREQ = common dso_local global i32 0, align 4
@GETNEXTREQ = common dso_local global i32 0, align 4
@GETBULKREQ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@BE_NULL = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [15 x i8] c"[objVal!=NULL]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i64)* @varbind_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @varbind_print(i32* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.be, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %10, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load i64, i64* %8, align 8
  %18 = call i32 @asn1_parse(i32* %15, i32* %16, i64 %17, %struct.be* %9)
  store i32 %18, i32* %10, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  br label %185

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.be, %struct.be* %9, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @BE_SEQ, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @ND_PRINT(i32* bitcast ([18 x i8]* @.str to i32*))
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @asn1_print(i32* %29, %struct.be* %9)
  br label %185

31:                                               ; preds = %21
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* %8, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load i32*, i32** %5, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = sub nsw i64 %38, %40
  %42 = inttoptr i64 %41 to i32*
  %43 = call i32 @ND_PRINT(i32* %42)
  br label %44

44:                                               ; preds = %36, %31
  %45 = getelementptr inbounds %struct.be, %struct.be* %9, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %8, align 8
  %47 = getelementptr inbounds %struct.be, %struct.be* %9, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i32*
  store i32* %50, i32** %7, align 8
  store i32 1, i32* %11, align 4
  br label %51

51:                                               ; preds = %182, %44
  %52 = load i64, i64* %8, align 8
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %185

54:                                               ; preds = %51
  %55 = load i32*, i32** %5, align 8
  %56 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.2 to i32*))
  %57 = load i32*, i32** %5, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = load i64, i64* %8, align 8
  %60 = call i32 @asn1_parse(i32* %57, i32* %58, i64 %59, %struct.be* %9)
  store i32 %60, i32* %10, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %185

63:                                               ; preds = %54
  %64 = getelementptr inbounds %struct.be, %struct.be* %9, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @BE_SEQ, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @ND_PRINT(i32* bitcast ([11 x i8]* @.str.3 to i32*))
  %71 = load i32*, i32** %5, align 8
  %72 = call i32 @asn1_print(i32* %71, %struct.be* %9)
  br label %185

73:                                               ; preds = %63
  %74 = load i32*, i32** %7, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32* %77, i32** %13, align 8
  %78 = load i64, i64* %8, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = sub nsw i64 %78, %80
  store i64 %81, i64* %14, align 8
  %82 = getelementptr inbounds %struct.be, %struct.be* %9, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %8, align 8
  %84 = getelementptr inbounds %struct.be, %struct.be* %9, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = inttoptr i64 %86 to i32*
  store i32* %87, i32** %7, align 8
  %88 = load i32*, i32** %5, align 8
  %89 = load i32*, i32** %7, align 8
  %90 = load i64, i64* %8, align 8
  %91 = call i32 @asn1_parse(i32* %88, i32* %89, i64 %90, %struct.be* %9)
  store i32 %91, i32* %10, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %73
  br label %185

94:                                               ; preds = %73
  %95 = getelementptr inbounds %struct.be, %struct.be* %9, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @BE_OID, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = load i32*, i32** %5, align 8
  %101 = call i32 @ND_PRINT(i32* bitcast ([15 x i8]* @.str.4 to i32*))
  %102 = load i32*, i32** %5, align 8
  %103 = call i32 @asn1_print(i32* %102, %struct.be* %9)
  br label %185

104:                                              ; preds = %94
  %105 = load i32*, i32** %5, align 8
  %106 = call i32 @asn1_print(i32* %105, %struct.be* %9)
  store i32 %106, i32* %12, align 4
  %107 = load i32, i32* %12, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  br label %185

110:                                              ; preds = %104
  %111 = load i32, i32* %10, align 4
  %112 = sext i32 %111 to i64
  %113 = load i64, i64* %8, align 8
  %114 = sub nsw i64 %113, %112
  store i64 %114, i64* %8, align 8
  %115 = load i32, i32* %10, align 4
  %116 = load i32*, i32** %7, align 8
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  store i32* %118, i32** %7, align 8
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* @GETREQ, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %133

122:                                              ; preds = %110
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* @GETNEXTREQ, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %126, label %133

126:                                              ; preds = %122
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* @GETBULKREQ, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %126
  %131 = load i32*, i32** %5, align 8
  %132 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.5 to i32*))
  br label %133

133:                                              ; preds = %130, %126, %122, %110
  %134 = load i32*, i32** %5, align 8
  %135 = load i32*, i32** %7, align 8
  %136 = load i64, i64* %8, align 8
  %137 = call i32 @asn1_parse(i32* %134, i32* %135, i64 %136, %struct.be* %9)
  store i32 %137, i32* %10, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %133
  br label %185

140:                                              ; preds = %133
  %141 = load i32, i32* %6, align 4
  %142 = load i32, i32* @GETREQ, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %152, label %144

144:                                              ; preds = %140
  %145 = load i32, i32* %6, align 4
  %146 = load i32, i32* @GETNEXTREQ, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %152, label %148

148:                                              ; preds = %144
  %149 = load i32, i32* %6, align 4
  %150 = load i32, i32* @GETBULKREQ, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %166

152:                                              ; preds = %148, %144, %140
  %153 = getelementptr inbounds %struct.be, %struct.be* %9, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @BE_NULL, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %165

157:                                              ; preds = %152
  %158 = load i32*, i32** %5, align 8
  %159 = call i32 @ND_PRINT(i32* bitcast ([15 x i8]* @.str.6 to i32*))
  %160 = load i32*, i32** %5, align 8
  %161 = call i32 @asn1_print(i32* %160, %struct.be* %9)
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %157
  br label %185

164:                                              ; preds = %157
  br label %165

165:                                              ; preds = %164, %152
  br label %179

166:                                              ; preds = %148
  %167 = getelementptr inbounds %struct.be, %struct.be* %9, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @BE_NULL, align 8
  %170 = icmp ne i64 %168, %169
  br i1 %170, label %171, label %174

171:                                              ; preds = %166
  %172 = load i32*, i32** %5, align 8
  %173 = call i32 @asn1_print(i32* %172, %struct.be* %9)
  store i32 %173, i32* %12, align 4
  br label %174

174:                                              ; preds = %171, %166
  %175 = load i32, i32* %12, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %174
  br label %185

178:                                              ; preds = %174
  br label %179

179:                                              ; preds = %178, %165
  %180 = load i64, i64* %14, align 8
  store i64 %180, i64* %8, align 8
  %181 = load i32*, i32** %13, align 8
  store i32* %181, i32** %7, align 8
  br label %182

182:                                              ; preds = %179
  %183 = load i32, i32* %11, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %11, align 4
  br label %51

185:                                              ; preds = %20, %26, %62, %68, %93, %99, %109, %139, %163, %177, %51
  ret void
}

declare dso_local i32 @asn1_parse(i32*, i32*, i64, %struct.be*) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @asn1_print(i32*, %struct.be*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
