; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_i386.c__i386_initvtop.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_i386.c__i386_initvtop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.vmstate*, i32 }
%struct.vmstate = type { i8*, i32, i32, i32 }
%struct.kvm_nlist = type { i8*, i32 }

@.str = private unnamed_addr constant [19 x i8] c"cannot allocate vm\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"kernbase\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"cannot resolve kernbase\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"IdlePDPT\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"cannot read IdlePDPT\00", align 1
@I386_PAGE_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"cannot allocate PTD\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Cannot read PDPT\00", align 1
@I386_PG_FRAME_PAE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"cannot read PDPT\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"IdlePTD\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"bad namelist\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"cannot read IdlePTD\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"cannot read PTD\00", align 1
@KERNBASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @_i386_initvtop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_i386_initvtop(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca [2 x %struct.kvm_nlist], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = call i8* @_kvm_malloc(%struct.TYPE_8__* %10, i32 24)
  %12 = bitcast i8* %11 to %struct.vmstate*
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  store %struct.vmstate* %12, %struct.vmstate** %14, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load %struct.vmstate*, %struct.vmstate** %16, align 8
  %18 = icmp eq %struct.vmstate* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @_kvm_err(%struct.TYPE_8__* %20, i32 %23, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %240

25:                                               ; preds = %1
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load %struct.vmstate*, %struct.vmstate** %27, align 8
  %29 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %28, i32 0, i32 0
  store i8* null, i8** %29, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %25
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load %struct.vmstate*, %struct.vmstate** %37, align 8
  %39 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %38, i32 0, i32 3
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load %struct.vmstate*, %struct.vmstate** %41, align 8
  %43 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %42, i32 0, i32 2
  %44 = call i32 @_kvm_read_core_phdrs(%struct.TYPE_8__* %35, i32* %39, i32* %43)
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %47

46:                                               ; preds = %34
  store i32 -1, i32* %2, align 4
  br label %240

47:                                               ; preds = %34
  br label %48

48:                                               ; preds = %47, %25
  %49 = getelementptr inbounds [2 x %struct.kvm_nlist], [2 x %struct.kvm_nlist]* %4, i64 0, i64 0
  %50 = getelementptr inbounds %struct.kvm_nlist, %struct.kvm_nlist* %49, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %50, align 16
  %51 = getelementptr inbounds [2 x %struct.kvm_nlist], [2 x %struct.kvm_nlist]* %4, i64 0, i64 1
  %52 = getelementptr inbounds %struct.kvm_nlist, %struct.kvm_nlist* %51, i32 0, i32 0
  store i8* null, i8** %52, align 16
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %54 = getelementptr inbounds [2 x %struct.kvm_nlist], [2 x %struct.kvm_nlist]* %4, i64 0, i64 0
  %55 = call i64 @kvm_nlist2(%struct.TYPE_8__* %53, %struct.kvm_nlist* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %48
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @_kvm_err(%struct.TYPE_8__* %58, i32 %61, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %240

63:                                               ; preds = %48
  %64 = getelementptr inbounds [2 x %struct.kvm_nlist], [2 x %struct.kvm_nlist]* %4, i64 0, i64 0
  %65 = getelementptr inbounds %struct.kvm_nlist, %struct.kvm_nlist* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds [2 x %struct.kvm_nlist], [2 x %struct.kvm_nlist]* %4, i64 0, i64 0
  %69 = getelementptr inbounds %struct.kvm_nlist, %struct.kvm_nlist* %68, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %69, align 16
  %70 = getelementptr inbounds [2 x %struct.kvm_nlist], [2 x %struct.kvm_nlist]* %4, i64 0, i64 1
  %71 = getelementptr inbounds %struct.kvm_nlist, %struct.kvm_nlist* %70, i32 0, i32 0
  store i8* null, i8** %71, align 16
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %73 = getelementptr inbounds [2 x %struct.kvm_nlist], [2 x %struct.kvm_nlist]* %4, i64 0, i64 0
  %74 = call i64 @kvm_nlist2(%struct.TYPE_8__* %72, %struct.kvm_nlist* %73)
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %170

76:                                               ; preds = %67
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %78 = getelementptr inbounds [2 x %struct.kvm_nlist], [2 x %struct.kvm_nlist]* %4, i64 0, i64 0
  %79 = getelementptr inbounds %struct.kvm_nlist, %struct.kvm_nlist* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sub nsw i32 %80, %81
  %83 = call i32 (%struct.TYPE_8__*, i32, ...) @kvm_read2(%struct.TYPE_8__* %77, i32 %82, i32* %5, i64 4)
  %84 = sext i32 %83 to i64
  %85 = icmp ne i64 %84, 4
  br i1 %85, label %86, label %92

86:                                               ; preds = %76
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @_kvm_err(%struct.TYPE_8__* %87, i32 %90, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %240

92:                                               ; preds = %76
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @le32toh(i32 %93)
  store i32 %94, i32* %5, align 4
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %96 = load i32, i32* @I386_PAGE_SIZE, align 4
  %97 = mul nsw i32 4, %96
  %98 = call i8* @_kvm_malloc(%struct.TYPE_8__* %95, i32 %97)
  store i8* %98, i8** %7, align 8
  %99 = load i8*, i8** %7, align 8
  %100 = icmp eq i8* %99, null
  br i1 %100, label %101, label %107

101:                                              ; preds = %92
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @_kvm_err(%struct.TYPE_8__* %102, i32 %105, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %240

107:                                              ; preds = %92
  store i32 0, i32* %8, align 4
  br label %108

108:                                              ; preds = %157, %107
  %109 = load i32, i32* %8, align 4
  %110 = icmp slt i32 %109, 4
  br i1 %110, label %111, label %160

111:                                              ; preds = %108
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %113 = load i32, i32* %5, align 4
  %114 = sext i32 %113 to i64
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = mul i64 %116, 4
  %118 = add i64 %114, %117
  %119 = trunc i64 %118 to i32
  %120 = call i32 (%struct.TYPE_8__*, i32, ...) @kvm_read2(%struct.TYPE_8__* %112, i32 %119, i32* %9, i64 4)
  %121 = sext i32 %120 to i64
  %122 = icmp ne i64 %121, 4
  br i1 %122, label %123, label %131

123:                                              ; preds = %111
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @_kvm_err(%struct.TYPE_8__* %124, i32 %127, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %129 = load i8*, i8** %7, align 8
  %130 = call i32 @free(i8* %129)
  store i32 -1, i32* %2, align 4
  br label %240

131:                                              ; preds = %111
  %132 = load i32, i32* %9, align 4
  %133 = call i32 @le64toh(i32 %132)
  store i32 %133, i32* %9, align 4
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* @I386_PG_FRAME_PAE, align 4
  %137 = and i32 %135, %136
  %138 = load i8*, i8** %7, align 8
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* @I386_PAGE_SIZE, align 4
  %141 = mul nsw i32 %139, %140
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %138, i64 %142
  %144 = load i32, i32* @I386_PAGE_SIZE, align 4
  %145 = call i32 (%struct.TYPE_8__*, i32, ...) @kvm_read2(%struct.TYPE_8__* %134, i32 %137, i8* %143, i32 %144)
  %146 = load i32, i32* @I386_PAGE_SIZE, align 4
  %147 = icmp ne i32 %145, %146
  br i1 %147, label %148, label %156

148:                                              ; preds = %131
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @_kvm_err(%struct.TYPE_8__* %149, i32 %152, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %154 = load i8*, i8** %7, align 8
  %155 = call i32 @free(i8* %154)
  store i32 -1, i32* %2, align 4
  br label %240

156:                                              ; preds = %131
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %8, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %8, align 4
  br label %108

160:                                              ; preds = %108
  %161 = load i8*, i8** %7, align 8
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 1
  %164 = load %struct.vmstate*, %struct.vmstate** %163, align 8
  %165 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %164, i32 0, i32 0
  store i8* %161, i8** %165, align 8
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 1
  %168 = load %struct.vmstate*, %struct.vmstate** %167, align 8
  %169 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %168, i32 0, i32 1
  store i32 1, i32* %169, align 8
  br label %239

170:                                              ; preds = %67
  %171 = getelementptr inbounds [2 x %struct.kvm_nlist], [2 x %struct.kvm_nlist]* %4, i64 0, i64 0
  %172 = getelementptr inbounds %struct.kvm_nlist, %struct.kvm_nlist* %171, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8** %172, align 16
  %173 = getelementptr inbounds [2 x %struct.kvm_nlist], [2 x %struct.kvm_nlist]* %4, i64 0, i64 1
  %174 = getelementptr inbounds %struct.kvm_nlist, %struct.kvm_nlist* %173, i32 0, i32 0
  store i8* null, i8** %174, align 16
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %176 = getelementptr inbounds [2 x %struct.kvm_nlist], [2 x %struct.kvm_nlist]* %4, i64 0, i64 0
  %177 = call i64 @kvm_nlist2(%struct.TYPE_8__* %175, %struct.kvm_nlist* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %170
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @_kvm_err(%struct.TYPE_8__* %180, i32 %183, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %240

185:                                              ; preds = %170
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %187 = getelementptr inbounds [2 x %struct.kvm_nlist], [2 x %struct.kvm_nlist]* %4, i64 0, i64 0
  %188 = getelementptr inbounds %struct.kvm_nlist, %struct.kvm_nlist* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* %6, align 4
  %191 = sub nsw i32 %189, %190
  %192 = call i32 (%struct.TYPE_8__*, i32, ...) @kvm_read2(%struct.TYPE_8__* %186, i32 %191, i32* %5, i64 4)
  %193 = sext i32 %192 to i64
  %194 = icmp ne i64 %193, 4
  br i1 %194, label %195, label %201

195:                                              ; preds = %185
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @_kvm_err(%struct.TYPE_8__* %196, i32 %199, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %240

201:                                              ; preds = %185
  %202 = load i32, i32* %5, align 4
  %203 = call i32 @le32toh(i32 %202)
  store i32 %203, i32* %5, align 4
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %205 = load i32, i32* @I386_PAGE_SIZE, align 4
  %206 = call i8* @_kvm_malloc(%struct.TYPE_8__* %204, i32 %205)
  store i8* %206, i8** %7, align 8
  %207 = load i8*, i8** %7, align 8
  %208 = icmp eq i8* %207, null
  br i1 %208, label %209, label %215

209:                                              ; preds = %201
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @_kvm_err(%struct.TYPE_8__* %210, i32 %213, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %240

215:                                              ; preds = %201
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %217 = load i32, i32* %5, align 4
  %218 = load i8*, i8** %7, align 8
  %219 = load i32, i32* @I386_PAGE_SIZE, align 4
  %220 = call i32 (%struct.TYPE_8__*, i32, ...) @kvm_read2(%struct.TYPE_8__* %216, i32 %217, i8* %218, i32 %219)
  %221 = load i32, i32* @I386_PAGE_SIZE, align 4
  %222 = icmp ne i32 %220, %221
  br i1 %222, label %223, label %229

223:                                              ; preds = %215
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %225 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = call i32 @_kvm_err(%struct.TYPE_8__* %224, i32 %227, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %240

229:                                              ; preds = %215
  %230 = load i8*, i8** %7, align 8
  %231 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 1
  %233 = load %struct.vmstate*, %struct.vmstate** %232, align 8
  %234 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %233, i32 0, i32 0
  store i8* %230, i8** %234, align 8
  %235 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 1
  %237 = load %struct.vmstate*, %struct.vmstate** %236, align 8
  %238 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %237, i32 0, i32 1
  store i32 0, i32* %238, align 8
  br label %239

239:                                              ; preds = %229, %160
  store i32 0, i32* %2, align 4
  br label %240

240:                                              ; preds = %239, %223, %209, %195, %179, %148, %123, %101, %86, %57, %46, %19
  %241 = load i32, i32* %2, align 4
  ret i32 %241
}

declare dso_local i8* @_kvm_malloc(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @_kvm_err(%struct.TYPE_8__*, i32, i8*) #1

declare dso_local i32 @_kvm_read_core_phdrs(%struct.TYPE_8__*, i32*, i32*) #1

declare dso_local i64 @kvm_nlist2(%struct.TYPE_8__*, %struct.kvm_nlist*) #1

declare dso_local i32 @kvm_read2(%struct.TYPE_8__*, i32, ...) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @le64toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
