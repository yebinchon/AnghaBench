; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc64-tdep.c_sparc64_pseudo_register_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc64-tdep.c_sparc64_pseudo_register_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.regcache = type { i32 }

@SPARC64_NUM_REGS = common dso_local global i32 0, align 4
@SPARC64_D0_REGNUM = common dso_local global i32 0, align 4
@SPARC64_D30_REGNUM = common dso_local global i32 0, align 4
@SPARC_F0_REGNUM = common dso_local global i32 0, align 4
@SPARC64_D32_REGNUM = common dso_local global i32 0, align 4
@SPARC64_D62_REGNUM = common dso_local global i32 0, align 4
@SPARC64_F32_REGNUM = common dso_local global i32 0, align 4
@SPARC64_Q0_REGNUM = common dso_local global i32 0, align 4
@SPARC64_Q28_REGNUM = common dso_local global i32 0, align 4
@SPARC64_Q32_REGNUM = common dso_local global i32 0, align 4
@SPARC64_Q60_REGNUM = common dso_local global i32 0, align 4
@SPARC64_STATE_REGNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gdbarch*, %struct.regcache*, i32, i8*)* @sparc64_pseudo_register_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sparc64_pseudo_register_read(%struct.gdbarch* %0, %struct.regcache* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.gdbarch*, align 8
  %6 = alloca %struct.regcache*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.gdbarch* %0, %struct.gdbarch** %5, align 8
  store %struct.regcache* %1, %struct.regcache** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @SPARC64_NUM_REGS, align 4
  %12 = icmp sge i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @gdb_assert(i32 %13)
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @SPARC64_D0_REGNUM, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %39

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @SPARC64_D30_REGNUM, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %18
  %23 = load i32, i32* @SPARC_F0_REGNUM, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @SPARC64_D0_REGNUM, align 4
  %26 = sub nsw i32 %24, %25
  %27 = mul nsw i32 2, %26
  %28 = add nsw i32 %23, %27
  store i32 %28, i32* %7, align 4
  %29 = load %struct.regcache*, %struct.regcache** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @regcache_raw_read(%struct.regcache* %29, i32 %30, i8* %31)
  %33 = load %struct.regcache*, %struct.regcache** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 4
  %38 = call i32 @regcache_raw_read(%struct.regcache* %33, i32 %35, i8* %37)
  br label %160

39:                                               ; preds = %18, %4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @SPARC64_D32_REGNUM, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %39
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @SPARC64_D62_REGNUM, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %43
  %48 = load i32, i32* @SPARC64_F32_REGNUM, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @SPARC64_D32_REGNUM, align 4
  %51 = sub nsw i32 %49, %50
  %52 = add nsw i32 %48, %51
  store i32 %52, i32* %7, align 4
  %53 = load %struct.regcache*, %struct.regcache** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 @regcache_raw_read(%struct.regcache* %53, i32 %54, i8* %55)
  br label %159

57:                                               ; preds = %43, %39
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @SPARC64_Q0_REGNUM, align 4
  %60 = icmp sge i32 %58, %59
  br i1 %60, label %61, label %94

61:                                               ; preds = %57
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @SPARC64_Q28_REGNUM, align 4
  %64 = icmp sle i32 %62, %63
  br i1 %64, label %65, label %94

65:                                               ; preds = %61
  %66 = load i32, i32* @SPARC_F0_REGNUM, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @SPARC64_Q0_REGNUM, align 4
  %69 = sub nsw i32 %67, %68
  %70 = mul nsw i32 4, %69
  %71 = add nsw i32 %66, %70
  store i32 %71, i32* %7, align 4
  %72 = load %struct.regcache*, %struct.regcache** %6, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load i8*, i8** %8, align 8
  %75 = call i32 @regcache_raw_read(%struct.regcache* %72, i32 %73, i8* %74)
  %76 = load %struct.regcache*, %struct.regcache** %6, align 8
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  %79 = load i8*, i8** %8, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 4
  %81 = call i32 @regcache_raw_read(%struct.regcache* %76, i32 %78, i8* %80)
  %82 = load %struct.regcache*, %struct.regcache** %6, align 8
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 2
  %85 = load i8*, i8** %8, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 8
  %87 = call i32 @regcache_raw_read(%struct.regcache* %82, i32 %84, i8* %86)
  %88 = load %struct.regcache*, %struct.regcache** %6, align 8
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, 3
  %91 = load i8*, i8** %8, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 12
  %93 = call i32 @regcache_raw_read(%struct.regcache* %88, i32 %90, i8* %92)
  br label %158

94:                                               ; preds = %61, %57
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @SPARC64_Q32_REGNUM, align 4
  %97 = icmp sge i32 %95, %96
  br i1 %97, label %98, label %119

98:                                               ; preds = %94
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @SPARC64_Q60_REGNUM, align 4
  %101 = icmp sle i32 %99, %100
  br i1 %101, label %102, label %119

102:                                              ; preds = %98
  %103 = load i32, i32* @SPARC64_F32_REGNUM, align 4
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @SPARC64_Q32_REGNUM, align 4
  %106 = sub nsw i32 %104, %105
  %107 = mul nsw i32 2, %106
  %108 = add nsw i32 %103, %107
  store i32 %108, i32* %7, align 4
  %109 = load %struct.regcache*, %struct.regcache** %6, align 8
  %110 = load i32, i32* %7, align 4
  %111 = load i8*, i8** %8, align 8
  %112 = call i32 @regcache_raw_read(%struct.regcache* %109, i32 %110, i8* %111)
  %113 = load %struct.regcache*, %struct.regcache** %6, align 8
  %114 = load i32, i32* %7, align 4
  %115 = add nsw i32 %114, 1
  %116 = load i8*, i8** %8, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 8
  %118 = call i32 @regcache_raw_read(%struct.regcache* %113, i32 %115, i8* %117)
  br label %157

119:                                              ; preds = %98, %94
  %120 = load i32, i32* %7, align 4
  %121 = icmp eq i32 %120, 129
  br i1 %121, label %131, label %122

122:                                              ; preds = %119
  %123 = load i32, i32* %7, align 4
  %124 = icmp eq i32 %123, 128
  br i1 %124, label %131, label %125

125:                                              ; preds = %122
  %126 = load i32, i32* %7, align 4
  %127 = icmp eq i32 %126, 131
  br i1 %127, label %131, label %128

128:                                              ; preds = %125
  %129 = load i32, i32* %7, align 4
  %130 = icmp eq i32 %129, 130
  br i1 %130, label %131, label %156

131:                                              ; preds = %128, %125, %122, %119
  %132 = load %struct.regcache*, %struct.regcache** %6, align 8
  %133 = load i32, i32* @SPARC64_STATE_REGNUM, align 4
  %134 = call i32 @regcache_raw_read_unsigned(%struct.regcache* %132, i32 %133, i32* %9)
  %135 = load i32, i32* %7, align 4
  switch i32 %135, label %152 [
    i32 129, label %136
    i32 128, label %140
    i32 131, label %144
    i32 130, label %148
  ]

136:                                              ; preds = %131
  %137 = load i32, i32* %9, align 4
  %138 = ashr i32 %137, 0
  %139 = and i32 %138, 31
  store i32 %139, i32* %9, align 4
  br label %152

140:                                              ; preds = %131
  %141 = load i32, i32* %9, align 4
  %142 = ashr i32 %141, 8
  %143 = and i32 %142, 4095
  store i32 %143, i32* %9, align 4
  br label %152

144:                                              ; preds = %131
  %145 = load i32, i32* %9, align 4
  %146 = ashr i32 %145, 24
  %147 = and i32 %146, 255
  store i32 %147, i32* %9, align 4
  br label %152

148:                                              ; preds = %131
  %149 = load i32, i32* %9, align 4
  %150 = ashr i32 %149, 32
  %151 = and i32 %150, 255
  store i32 %151, i32* %9, align 4
  br label %152

152:                                              ; preds = %131, %148, %144, %140, %136
  %153 = load i8*, i8** %8, align 8
  %154 = load i32, i32* %9, align 4
  %155 = call i32 @store_unsigned_integer(i8* %153, i32 8, i32 %154)
  br label %156

156:                                              ; preds = %152, %128
  br label %157

157:                                              ; preds = %156, %102
  br label %158

158:                                              ; preds = %157, %65
  br label %159

159:                                              ; preds = %158, %47
  br label %160

160:                                              ; preds = %159, %22
  ret void
}

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @regcache_raw_read(%struct.regcache*, i32, i8*) #1

declare dso_local i32 @regcache_raw_read_unsigned(%struct.regcache*, i32, i32*) #1

declare dso_local i32 @store_unsigned_integer(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
