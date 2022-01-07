; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_val_new_getmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_val_new_getmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { i32, i32, i32, i32, %struct.dns_msg* }
%struct.dns_msg = type { %struct.reply_info*, i32 }
%struct.reply_info = type { i32, i32, i32, %struct.reply_info* }
%struct.val_qstate = type { i64, %struct.TYPE_2__*, %struct.dns_msg*, i32 }
%struct.TYPE_2__ = type { i8* }

@LDNS_RCODE_NOERROR = common dso_local global i32 0, align 4
@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"constructing reply for validation\00", align 1
@BIT_QR = common dso_local global i32 0, align 4
@BIT_RA = common dso_local global i32 0, align 4
@BIT_CD = common dso_local global i32 0, align 4
@BIT_RD = common dso_local global i32 0, align 4
@RR_COUNT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.val_qstate* (%struct.module_qstate*, %struct.val_qstate*)* @val_new_getmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.val_qstate* @val_new_getmsg(%struct.module_qstate* %0, %struct.val_qstate* %1) #0 {
  %3 = alloca %struct.val_qstate*, align 8
  %4 = alloca %struct.module_qstate*, align 8
  %5 = alloca %struct.val_qstate*, align 8
  store %struct.module_qstate* %0, %struct.module_qstate** %4, align 8
  store %struct.val_qstate* %1, %struct.val_qstate** %5, align 8
  %6 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %7 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %6, i32 0, i32 4
  %8 = load %struct.dns_msg*, %struct.dns_msg** %7, align 8
  %9 = icmp ne %struct.dns_msg* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %12 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @LDNS_RCODE_NOERROR, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %90

16:                                               ; preds = %10, %2
  %17 = load i32, i32* @VERB_ALGO, align 4
  %18 = call i32 @verbose(i32 %17, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %20 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @regional_alloc(i32 %21, i32 16)
  %23 = inttoptr i64 %22 to %struct.dns_msg*
  %24 = load %struct.val_qstate*, %struct.val_qstate** %5, align 8
  %25 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %24, i32 0, i32 2
  store %struct.dns_msg* %23, %struct.dns_msg** %25, align 8
  %26 = load %struct.val_qstate*, %struct.val_qstate** %5, align 8
  %27 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %26, i32 0, i32 2
  %28 = load %struct.dns_msg*, %struct.dns_msg** %27, align 8
  %29 = icmp ne %struct.dns_msg* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %16
  store %struct.val_qstate* null, %struct.val_qstate** %3, align 8
  br label %167

31:                                               ; preds = %16
  %32 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %33 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.val_qstate*, %struct.val_qstate** %5, align 8
  %36 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %35, i32 0, i32 2
  %37 = load %struct.dns_msg*, %struct.dns_msg** %36, align 8
  %38 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %37, i32 0, i32 1
  store i32 %34, i32* %38, align 8
  %39 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %40 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @regional_alloc(i32 %41, i32 24)
  %43 = inttoptr i64 %42 to %struct.reply_info*
  %44 = load %struct.val_qstate*, %struct.val_qstate** %5, align 8
  %45 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %44, i32 0, i32 2
  %46 = load %struct.dns_msg*, %struct.dns_msg** %45, align 8
  %47 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %46, i32 0, i32 0
  store %struct.reply_info* %43, %struct.reply_info** %47, align 8
  %48 = load %struct.val_qstate*, %struct.val_qstate** %5, align 8
  %49 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %48, i32 0, i32 2
  %50 = load %struct.dns_msg*, %struct.dns_msg** %49, align 8
  %51 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %50, i32 0, i32 0
  %52 = load %struct.reply_info*, %struct.reply_info** %51, align 8
  %53 = icmp ne %struct.reply_info* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %31
  store %struct.val_qstate* null, %struct.val_qstate** %3, align 8
  br label %167

55:                                               ; preds = %31
  %56 = load %struct.val_qstate*, %struct.val_qstate** %5, align 8
  %57 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %56, i32 0, i32 2
  %58 = load %struct.dns_msg*, %struct.dns_msg** %57, align 8
  %59 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %58, i32 0, i32 0
  %60 = load %struct.reply_info*, %struct.reply_info** %59, align 8
  %61 = call i32 @memset(%struct.reply_info* %60, i32 0, i32 24)
  %62 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %63 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %64, 15
  %66 = load i32, i32* @BIT_QR, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @BIT_RA, align 4
  %69 = or i32 %67, %68
  %70 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %71 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @BIT_CD, align 4
  %74 = load i32, i32* @BIT_RD, align 4
  %75 = or i32 %73, %74
  %76 = or i32 %72, %75
  %77 = or i32 %69, %76
  %78 = load %struct.val_qstate*, %struct.val_qstate** %5, align 8
  %79 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %78, i32 0, i32 2
  %80 = load %struct.dns_msg*, %struct.dns_msg** %79, align 8
  %81 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %80, i32 0, i32 0
  %82 = load %struct.reply_info*, %struct.reply_info** %81, align 8
  %83 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %82, i32 0, i32 0
  store i32 %77, i32* %83, align 8
  %84 = load %struct.val_qstate*, %struct.val_qstate** %5, align 8
  %85 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %84, i32 0, i32 2
  %86 = load %struct.dns_msg*, %struct.dns_msg** %85, align 8
  %87 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %86, i32 0, i32 0
  %88 = load %struct.reply_info*, %struct.reply_info** %87, align 8
  %89 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %88, i32 0, i32 1
  store i32 1, i32* %89, align 4
  br label %96

90:                                               ; preds = %10
  %91 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %92 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %91, i32 0, i32 4
  %93 = load %struct.dns_msg*, %struct.dns_msg** %92, align 8
  %94 = load %struct.val_qstate*, %struct.val_qstate** %5, align 8
  %95 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %94, i32 0, i32 2
  store %struct.dns_msg* %93, %struct.dns_msg** %95, align 8
  br label %96

96:                                               ; preds = %90, %55
  %97 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %98 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.val_qstate*, %struct.val_qstate** %5, align 8
  %101 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 8
  %102 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %103 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.val_qstate*, %struct.val_qstate** %5, align 8
  %106 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %105, i32 0, i32 2
  %107 = load %struct.dns_msg*, %struct.dns_msg** %106, align 8
  %108 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %107, i32 0, i32 0
  %109 = load %struct.reply_info*, %struct.reply_info** %108, align 8
  %110 = call i8* @regional_alloc_init(i32 %104, %struct.reply_info* %109, i32 20)
  %111 = bitcast i8* %110 to %struct.TYPE_2__*
  %112 = load %struct.val_qstate*, %struct.val_qstate** %5, align 8
  %113 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %112, i32 0, i32 1
  store %struct.TYPE_2__* %111, %struct.TYPE_2__** %113, align 8
  %114 = load %struct.val_qstate*, %struct.val_qstate** %5, align 8
  %115 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %114, i32 0, i32 1
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = icmp ne %struct.TYPE_2__* %116, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %96
  store %struct.val_qstate* null, %struct.val_qstate** %3, align 8
  br label %167

119:                                              ; preds = %96
  %120 = load %struct.val_qstate*, %struct.val_qstate** %5, align 8
  %121 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %120, i32 0, i32 2
  %122 = load %struct.dns_msg*, %struct.dns_msg** %121, align 8
  %123 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %122, i32 0, i32 0
  %124 = load %struct.reply_info*, %struct.reply_info** %123, align 8
  %125 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @RR_COUNT_MAX, align 4
  %128 = icmp sgt i32 %126, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %119
  store %struct.val_qstate* null, %struct.val_qstate** %3, align 8
  br label %167

130:                                              ; preds = %119
  %131 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %132 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.val_qstate*, %struct.val_qstate** %5, align 8
  %135 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %134, i32 0, i32 2
  %136 = load %struct.dns_msg*, %struct.dns_msg** %135, align 8
  %137 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %136, i32 0, i32 0
  %138 = load %struct.reply_info*, %struct.reply_info** %137, align 8
  %139 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %138, i32 0, i32 3
  %140 = load %struct.reply_info*, %struct.reply_info** %139, align 8
  %141 = load %struct.val_qstate*, %struct.val_qstate** %5, align 8
  %142 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %141, i32 0, i32 2
  %143 = load %struct.dns_msg*, %struct.dns_msg** %142, align 8
  %144 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %143, i32 0, i32 0
  %145 = load %struct.reply_info*, %struct.reply_info** %144, align 8
  %146 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = sext i32 %147 to i64
  %149 = mul i64 8, %148
  %150 = trunc i64 %149 to i32
  %151 = call i8* @regional_alloc_init(i32 %133, %struct.reply_info* %140, i32 %150)
  %152 = load %struct.val_qstate*, %struct.val_qstate** %5, align 8
  %153 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %152, i32 0, i32 1
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  store i8* %151, i8** %155, align 8
  %156 = load %struct.val_qstate*, %struct.val_qstate** %5, align 8
  %157 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %156, i32 0, i32 1
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 0
  %160 = load i8*, i8** %159, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %163, label %162

162:                                              ; preds = %130
  store %struct.val_qstate* null, %struct.val_qstate** %3, align 8
  br label %167

163:                                              ; preds = %130
  %164 = load %struct.val_qstate*, %struct.val_qstate** %5, align 8
  %165 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %164, i32 0, i32 0
  store i64 0, i64* %165, align 8
  %166 = load %struct.val_qstate*, %struct.val_qstate** %5, align 8
  store %struct.val_qstate* %166, %struct.val_qstate** %3, align 8
  br label %167

167:                                              ; preds = %163, %162, %129, %118, %54, %30
  %168 = load %struct.val_qstate*, %struct.val_qstate** %3, align 8
  ret %struct.val_qstate* %168
}

declare dso_local i32 @verbose(i32, i8*) #1

declare dso_local i64 @regional_alloc(i32, i32) #1

declare dso_local i32 @memset(%struct.reply_info*, i32, i32) #1

declare dso_local i8* @regional_alloc_init(i32, %struct.reply_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
