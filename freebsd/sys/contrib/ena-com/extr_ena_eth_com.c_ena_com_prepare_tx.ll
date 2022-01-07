; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_eth_com.c_ena_com_prepare_tx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_eth_com.c_ena_com_prepare_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_io_sq = type { i32, i64, i32, i64, i32, i64 }
%struct.ena_com_tx_ctx = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8*, %struct.ena_com_buf* }
%struct.ena_com_buf = type { i32, i32 }
%struct.ena_eth_io_tx_desc = type { i32, i32, i32, i64 }

@ENA_COM_IO_QUEUE_DIRECTION_TX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"wrong Q type\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Not enough space in the tx queue\0A\00", align 1
@ENA_COM_NO_MEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"header size is too large %d max header: %d\0A\00", align 1
@ENA_COM_INVAL = common dso_local global i32 0, align 4
@ENA_ADMIN_PLACEMENT_POLICY_DEV = common dso_local global i64 0, align 8
@ENA_COM_FAULT = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_DESC_FIRST_MASK = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_DESC_HEADER_LENGTH_SHIFT = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_DESC_HEADER_LENGTH_MASK = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_DESC_PHASE_SHIFT = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_DESC_PHASE_MASK = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_DESC_COMP_REQ_MASK = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_DESC_REQ_ID_LO_SHIFT = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_DESC_REQ_ID_LO_MASK = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_DESC_DF_SHIFT = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_DESC_DF_MASK = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_DESC_REQ_ID_HI_SHIFT = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_DESC_REQ_ID_HI_MASK = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_DESC_TSO_EN_SHIFT = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_DESC_TSO_EN_MASK = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_DESC_L3_PROTO_IDX_MASK = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_DESC_L4_PROTO_IDX_SHIFT = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_DESC_L4_PROTO_IDX_MASK = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_DESC_L3_CSUM_EN_SHIFT = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_DESC_L3_CSUM_EN_MASK = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_DESC_L4_CSUM_EN_SHIFT = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_DESC_L4_CSUM_EN_MASK = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_DESC_L4_CSUM_PARTIAL_SHIFT = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_DESC_L4_CSUM_PARTIAL_MASK = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_DESC_LENGTH_MASK = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_DESC_ADDR_HI_MASK = common dso_local global i32 0, align 4
@ENA_ETH_IO_TX_DESC_LAST_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ena_com_prepare_tx(%struct.ena_com_io_sq* %0, %struct.ena_com_tx_ctx* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ena_com_io_sq*, align 8
  %6 = alloca %struct.ena_com_tx_ctx*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ena_eth_io_tx_desc*, align 8
  %9 = alloca %struct.ena_com_buf*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ena_com_io_sq* %0, %struct.ena_com_io_sq** %5, align 8
  store %struct.ena_com_tx_ctx* %1, %struct.ena_com_tx_ctx** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.ena_eth_io_tx_desc* null, %struct.ena_eth_io_tx_desc** %8, align 8
  %18 = load %struct.ena_com_tx_ctx*, %struct.ena_com_tx_ctx** %6, align 8
  %19 = getelementptr inbounds %struct.ena_com_tx_ctx, %struct.ena_com_tx_ctx* %18, i32 0, i32 12
  %20 = load %struct.ena_com_buf*, %struct.ena_com_buf** %19, align 8
  store %struct.ena_com_buf* %20, %struct.ena_com_buf** %9, align 8
  %21 = load %struct.ena_com_tx_ctx*, %struct.ena_com_tx_ctx** %6, align 8
  %22 = getelementptr inbounds %struct.ena_com_tx_ctx, %struct.ena_com_tx_ctx* %21, i32 0, i32 11
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %10, align 8
  %24 = load %struct.ena_com_tx_ctx*, %struct.ena_com_tx_ctx** %6, align 8
  %25 = getelementptr inbounds %struct.ena_com_tx_ctx, %struct.ena_com_tx_ctx* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %11, align 4
  %27 = load %struct.ena_com_tx_ctx*, %struct.ena_com_tx_ctx** %6, align 8
  %28 = getelementptr inbounds %struct.ena_com_tx_ctx, %struct.ena_com_tx_ctx* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %12, align 4
  %30 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %31 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %13, align 4
  %33 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %34 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @ENA_COM_IO_QUEUE_DIRECTION_TX, align 8
  %37 = icmp ne i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @ENA_WARN(i32 %38, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %41 = load i32, i32* %12, align 4
  %42 = add nsw i32 %41, 1
  %43 = call i32 @ena_com_sq_have_enough_space(%struct.ena_com_io_sq* %40, i32 %42)
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %3
  %50 = call i32 @ena_trc_dbg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @ENA_COM_NO_MEM, align 4
  store i32 %51, i32* %4, align 4
  br label %398

52:                                               ; preds = %3
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %55 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = icmp sgt i32 %53, %56
  %58 = zext i1 %57 to i32
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %52
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %64 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @ena_trc_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %62, i32 %65)
  %67 = load i32, i32* @ENA_COM_INVAL, align 4
  store i32 %67, i32* %4, align 4
  br label %398

68:                                               ; preds = %52
  %69 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %70 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @ENA_ADMIN_PLACEMENT_POLICY_DEV, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load i8*, i8** %10, align 8
  %76 = icmp ne i8* %75, null
  %77 = xor i1 %76, true
  br label %78

78:                                               ; preds = %74, %68
  %79 = phi i1 [ false, %68 ], [ %77, %74 ]
  %80 = zext i1 %79 to i32
  %81 = call i64 @unlikely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i32, i32* @ENA_COM_INVAL, align 4
  store i32 %84, i32* %4, align 4
  br label %398

85:                                               ; preds = %78
  %86 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %87 = load i8*, i8** %10, align 8
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @ena_com_write_header_to_bounce(%struct.ena_com_io_sq* %86, i8* %87, i32 %88)
  store i32 %89, i32* %15, align 4
  %90 = load i32, i32* %15, align 4
  %91 = call i64 @unlikely(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %85
  %94 = load i32, i32* %15, align 4
  store i32 %94, i32* %4, align 4
  br label %398

95:                                               ; preds = %85
  %96 = load %struct.ena_com_tx_ctx*, %struct.ena_com_tx_ctx** %6, align 8
  %97 = getelementptr inbounds %struct.ena_com_tx_ctx, %struct.ena_com_tx_ctx* %96, i32 0, i32 10
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %102 = load %struct.ena_com_tx_ctx*, %struct.ena_com_tx_ctx** %6, align 8
  %103 = call i64 @ena_com_meta_desc_changed(%struct.ena_com_io_sq* %101, %struct.ena_com_tx_ctx* %102)
  %104 = icmp ne i64 %103, 0
  br label %105

105:                                              ; preds = %100, %95
  %106 = phi i1 [ false, %95 ], [ %104, %100 ]
  %107 = zext i1 %106 to i32
  store i32 %107, i32* %16, align 4
  %108 = load i32, i32* %16, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %120

110:                                              ; preds = %105
  %111 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %112 = load %struct.ena_com_tx_ctx*, %struct.ena_com_tx_ctx** %6, align 8
  %113 = call i32 @ena_com_create_and_store_tx_meta_desc(%struct.ena_com_io_sq* %111, %struct.ena_com_tx_ctx* %112)
  store i32 %113, i32* %15, align 4
  %114 = load i32, i32* %15, align 4
  %115 = call i64 @unlikely(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %110
  %118 = load i32, i32* %15, align 4
  store i32 %118, i32* %4, align 4
  br label %398

119:                                              ; preds = %110
  br label %120

120:                                              ; preds = %119, %105
  %121 = load i32, i32* %12, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %120
  %124 = load i32, i32* %11, align 4
  %125 = icmp ne i32 %124, 0
  %126 = xor i1 %125, true
  br label %127

127:                                              ; preds = %123, %120
  %128 = phi i1 [ false, %120 ], [ %126, %123 ]
  %129 = zext i1 %128 to i32
  %130 = call i64 @unlikely(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %142

132:                                              ; preds = %127
  %133 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %134 = call i32 @ena_com_close_bounce_buffer(%struct.ena_com_io_sq* %133)
  store i32 %134, i32* %15, align 4
  %135 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %136 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %13, align 4
  %139 = sub nsw i32 %137, %138
  %140 = load i32*, i32** %7, align 8
  store i32 %139, i32* %140, align 4
  %141 = load i32, i32* %15, align 4
  store i32 %141, i32* %4, align 4
  br label %398

142:                                              ; preds = %127
  %143 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %144 = call %struct.ena_eth_io_tx_desc* @get_sq_desc(%struct.ena_com_io_sq* %143)
  store %struct.ena_eth_io_tx_desc* %144, %struct.ena_eth_io_tx_desc** %8, align 8
  %145 = load %struct.ena_eth_io_tx_desc*, %struct.ena_eth_io_tx_desc** %8, align 8
  %146 = icmp ne %struct.ena_eth_io_tx_desc* %145, null
  %147 = xor i1 %146, true
  %148 = zext i1 %147 to i32
  %149 = call i64 @unlikely(i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %142
  %152 = load i32, i32* @ENA_COM_FAULT, align 4
  store i32 %152, i32* %4, align 4
  br label %398

153:                                              ; preds = %142
  %154 = load %struct.ena_eth_io_tx_desc*, %struct.ena_eth_io_tx_desc** %8, align 8
  %155 = call i32 @memset(%struct.ena_eth_io_tx_desc* %154, i32 0, i32 24)
  %156 = load i32, i32* %16, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %164, label %158

158:                                              ; preds = %153
  %159 = load i32, i32* @ENA_ETH_IO_TX_DESC_FIRST_MASK, align 4
  %160 = load %struct.ena_eth_io_tx_desc*, %struct.ena_eth_io_tx_desc** %8, align 8
  %161 = getelementptr inbounds %struct.ena_eth_io_tx_desc, %struct.ena_eth_io_tx_desc* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = or i32 %162, %159
  store i32 %163, i32* %161, align 8
  br label %164

164:                                              ; preds = %158, %153
  %165 = load i32, i32* %11, align 4
  %166 = load i32, i32* @ENA_ETH_IO_TX_DESC_HEADER_LENGTH_SHIFT, align 4
  %167 = shl i32 %165, %166
  %168 = load i32, i32* @ENA_ETH_IO_TX_DESC_HEADER_LENGTH_MASK, align 4
  %169 = and i32 %167, %168
  %170 = load %struct.ena_eth_io_tx_desc*, %struct.ena_eth_io_tx_desc** %8, align 8
  %171 = getelementptr inbounds %struct.ena_eth_io_tx_desc, %struct.ena_eth_io_tx_desc* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = or i32 %172, %169
  store i32 %173, i32* %171, align 4
  %174 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %175 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @ENA_ETH_IO_TX_DESC_PHASE_SHIFT, align 4
  %178 = shl i32 %176, %177
  %179 = load i32, i32* @ENA_ETH_IO_TX_DESC_PHASE_MASK, align 4
  %180 = and i32 %178, %179
  %181 = load %struct.ena_eth_io_tx_desc*, %struct.ena_eth_io_tx_desc** %8, align 8
  %182 = getelementptr inbounds %struct.ena_eth_io_tx_desc, %struct.ena_eth_io_tx_desc* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = or i32 %183, %180
  store i32 %184, i32* %182, align 8
  %185 = load i32, i32* @ENA_ETH_IO_TX_DESC_COMP_REQ_MASK, align 4
  %186 = load %struct.ena_eth_io_tx_desc*, %struct.ena_eth_io_tx_desc** %8, align 8
  %187 = getelementptr inbounds %struct.ena_eth_io_tx_desc, %struct.ena_eth_io_tx_desc* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = or i32 %188, %185
  store i32 %189, i32* %187, align 8
  %190 = load %struct.ena_com_tx_ctx*, %struct.ena_com_tx_ctx** %6, align 8
  %191 = getelementptr inbounds %struct.ena_com_tx_ctx, %struct.ena_com_tx_ctx* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @ENA_ETH_IO_TX_DESC_REQ_ID_LO_SHIFT, align 4
  %194 = shl i32 %192, %193
  %195 = load i32, i32* @ENA_ETH_IO_TX_DESC_REQ_ID_LO_MASK, align 4
  %196 = and i32 %194, %195
  %197 = load %struct.ena_eth_io_tx_desc*, %struct.ena_eth_io_tx_desc** %8, align 8
  %198 = getelementptr inbounds %struct.ena_eth_io_tx_desc, %struct.ena_eth_io_tx_desc* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = or i32 %199, %196
  store i32 %200, i32* %198, align 8
  %201 = load %struct.ena_com_tx_ctx*, %struct.ena_com_tx_ctx** %6, align 8
  %202 = getelementptr inbounds %struct.ena_com_tx_ctx, %struct.ena_com_tx_ctx* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @ENA_ETH_IO_TX_DESC_DF_SHIFT, align 4
  %205 = shl i32 %203, %204
  %206 = load i32, i32* @ENA_ETH_IO_TX_DESC_DF_MASK, align 4
  %207 = and i32 %205, %206
  %208 = load %struct.ena_eth_io_tx_desc*, %struct.ena_eth_io_tx_desc** %8, align 8
  %209 = getelementptr inbounds %struct.ena_eth_io_tx_desc, %struct.ena_eth_io_tx_desc* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = or i32 %210, %207
  store i32 %211, i32* %209, align 8
  %212 = load %struct.ena_com_tx_ctx*, %struct.ena_com_tx_ctx** %6, align 8
  %213 = getelementptr inbounds %struct.ena_com_tx_ctx, %struct.ena_com_tx_ctx* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = ashr i32 %214, 10
  %216 = load i32, i32* @ENA_ETH_IO_TX_DESC_REQ_ID_HI_SHIFT, align 4
  %217 = shl i32 %215, %216
  %218 = load i32, i32* @ENA_ETH_IO_TX_DESC_REQ_ID_HI_MASK, align 4
  %219 = and i32 %217, %218
  %220 = load %struct.ena_eth_io_tx_desc*, %struct.ena_eth_io_tx_desc** %8, align 8
  %221 = getelementptr inbounds %struct.ena_eth_io_tx_desc, %struct.ena_eth_io_tx_desc* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = or i32 %222, %219
  store i32 %223, i32* %221, align 8
  %224 = load %struct.ena_com_tx_ctx*, %struct.ena_com_tx_ctx** %6, align 8
  %225 = getelementptr inbounds %struct.ena_com_tx_ctx, %struct.ena_com_tx_ctx* %224, i32 0, i32 10
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %293

228:                                              ; preds = %164
  %229 = load %struct.ena_com_tx_ctx*, %struct.ena_com_tx_ctx** %6, align 8
  %230 = getelementptr inbounds %struct.ena_com_tx_ctx, %struct.ena_com_tx_ctx* %229, i32 0, i32 4
  %231 = load i32, i32* %230, align 8
  %232 = load i32, i32* @ENA_ETH_IO_TX_DESC_TSO_EN_SHIFT, align 4
  %233 = shl i32 %231, %232
  %234 = load i32, i32* @ENA_ETH_IO_TX_DESC_TSO_EN_MASK, align 4
  %235 = and i32 %233, %234
  %236 = load %struct.ena_eth_io_tx_desc*, %struct.ena_eth_io_tx_desc** %8, align 8
  %237 = getelementptr inbounds %struct.ena_eth_io_tx_desc, %struct.ena_eth_io_tx_desc* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = or i32 %238, %235
  store i32 %239, i32* %237, align 8
  %240 = load %struct.ena_com_tx_ctx*, %struct.ena_com_tx_ctx** %6, align 8
  %241 = getelementptr inbounds %struct.ena_com_tx_ctx, %struct.ena_com_tx_ctx* %240, i32 0, i32 5
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @ENA_ETH_IO_TX_DESC_L3_PROTO_IDX_MASK, align 4
  %244 = and i32 %242, %243
  %245 = load %struct.ena_eth_io_tx_desc*, %struct.ena_eth_io_tx_desc** %8, align 8
  %246 = getelementptr inbounds %struct.ena_eth_io_tx_desc, %struct.ena_eth_io_tx_desc* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  %248 = or i32 %247, %244
  store i32 %248, i32* %246, align 8
  %249 = load %struct.ena_com_tx_ctx*, %struct.ena_com_tx_ctx** %6, align 8
  %250 = getelementptr inbounds %struct.ena_com_tx_ctx, %struct.ena_com_tx_ctx* %249, i32 0, i32 6
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* @ENA_ETH_IO_TX_DESC_L4_PROTO_IDX_SHIFT, align 4
  %253 = shl i32 %251, %252
  %254 = load i32, i32* @ENA_ETH_IO_TX_DESC_L4_PROTO_IDX_MASK, align 4
  %255 = and i32 %253, %254
  %256 = load %struct.ena_eth_io_tx_desc*, %struct.ena_eth_io_tx_desc** %8, align 8
  %257 = getelementptr inbounds %struct.ena_eth_io_tx_desc, %struct.ena_eth_io_tx_desc* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 8
  %259 = or i32 %258, %255
  store i32 %259, i32* %257, align 8
  %260 = load %struct.ena_com_tx_ctx*, %struct.ena_com_tx_ctx** %6, align 8
  %261 = getelementptr inbounds %struct.ena_com_tx_ctx, %struct.ena_com_tx_ctx* %260, i32 0, i32 7
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* @ENA_ETH_IO_TX_DESC_L3_CSUM_EN_SHIFT, align 4
  %264 = shl i32 %262, %263
  %265 = load i32, i32* @ENA_ETH_IO_TX_DESC_L3_CSUM_EN_MASK, align 4
  %266 = and i32 %264, %265
  %267 = load %struct.ena_eth_io_tx_desc*, %struct.ena_eth_io_tx_desc** %8, align 8
  %268 = getelementptr inbounds %struct.ena_eth_io_tx_desc, %struct.ena_eth_io_tx_desc* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 8
  %270 = or i32 %269, %266
  store i32 %270, i32* %268, align 8
  %271 = load %struct.ena_com_tx_ctx*, %struct.ena_com_tx_ctx** %6, align 8
  %272 = getelementptr inbounds %struct.ena_com_tx_ctx, %struct.ena_com_tx_ctx* %271, i32 0, i32 8
  %273 = load i32, i32* %272, align 8
  %274 = load i32, i32* @ENA_ETH_IO_TX_DESC_L4_CSUM_EN_SHIFT, align 4
  %275 = shl i32 %273, %274
  %276 = load i32, i32* @ENA_ETH_IO_TX_DESC_L4_CSUM_EN_MASK, align 4
  %277 = and i32 %275, %276
  %278 = load %struct.ena_eth_io_tx_desc*, %struct.ena_eth_io_tx_desc** %8, align 8
  %279 = getelementptr inbounds %struct.ena_eth_io_tx_desc, %struct.ena_eth_io_tx_desc* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 8
  %281 = or i32 %280, %277
  store i32 %281, i32* %279, align 8
  %282 = load %struct.ena_com_tx_ctx*, %struct.ena_com_tx_ctx** %6, align 8
  %283 = getelementptr inbounds %struct.ena_com_tx_ctx, %struct.ena_com_tx_ctx* %282, i32 0, i32 9
  %284 = load i32, i32* %283, align 4
  %285 = load i32, i32* @ENA_ETH_IO_TX_DESC_L4_CSUM_PARTIAL_SHIFT, align 4
  %286 = shl i32 %284, %285
  %287 = load i32, i32* @ENA_ETH_IO_TX_DESC_L4_CSUM_PARTIAL_MASK, align 4
  %288 = and i32 %286, %287
  %289 = load %struct.ena_eth_io_tx_desc*, %struct.ena_eth_io_tx_desc** %8, align 8
  %290 = getelementptr inbounds %struct.ena_eth_io_tx_desc, %struct.ena_eth_io_tx_desc* %289, i32 0, i32 2
  %291 = load i32, i32* %290, align 8
  %292 = or i32 %291, %288
  store i32 %292, i32* %290, align 8
  br label %293

293:                                              ; preds = %228, %164
  store i32 0, i32* %14, align 4
  br label %294

294:                                              ; preds = %372, %293
  %295 = load i32, i32* %14, align 4
  %296 = load i32, i32* %12, align 4
  %297 = icmp slt i32 %295, %296
  br i1 %297, label %298, label %375

298:                                              ; preds = %294
  %299 = load i32, i32* %14, align 4
  %300 = icmp ne i32 %299, 0
  %301 = zext i1 %300 to i32
  %302 = call i64 @likely(i32 %301)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %337

304:                                              ; preds = %298
  %305 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %306 = call i32 @ena_com_sq_update_tail(%struct.ena_com_io_sq* %305)
  store i32 %306, i32* %15, align 4
  %307 = load i32, i32* %15, align 4
  %308 = call i64 @unlikely(i32 %307)
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %312

310:                                              ; preds = %304
  %311 = load i32, i32* %15, align 4
  store i32 %311, i32* %4, align 4
  br label %398

312:                                              ; preds = %304
  %313 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %314 = call %struct.ena_eth_io_tx_desc* @get_sq_desc(%struct.ena_com_io_sq* %313)
  store %struct.ena_eth_io_tx_desc* %314, %struct.ena_eth_io_tx_desc** %8, align 8
  %315 = load %struct.ena_eth_io_tx_desc*, %struct.ena_eth_io_tx_desc** %8, align 8
  %316 = icmp ne %struct.ena_eth_io_tx_desc* %315, null
  %317 = xor i1 %316, true
  %318 = zext i1 %317 to i32
  %319 = call i64 @unlikely(i32 %318)
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %323

321:                                              ; preds = %312
  %322 = load i32, i32* @ENA_COM_FAULT, align 4
  store i32 %322, i32* %4, align 4
  br label %398

323:                                              ; preds = %312
  %324 = load %struct.ena_eth_io_tx_desc*, %struct.ena_eth_io_tx_desc** %8, align 8
  %325 = call i32 @memset(%struct.ena_eth_io_tx_desc* %324, i32 0, i32 24)
  %326 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %327 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %326, i32 0, i32 4
  %328 = load i32, i32* %327, align 8
  %329 = load i32, i32* @ENA_ETH_IO_TX_DESC_PHASE_SHIFT, align 4
  %330 = shl i32 %328, %329
  %331 = load i32, i32* @ENA_ETH_IO_TX_DESC_PHASE_MASK, align 4
  %332 = and i32 %330, %331
  %333 = load %struct.ena_eth_io_tx_desc*, %struct.ena_eth_io_tx_desc** %8, align 8
  %334 = getelementptr inbounds %struct.ena_eth_io_tx_desc, %struct.ena_eth_io_tx_desc* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = or i32 %335, %332
  store i32 %336, i32* %334, align 8
  br label %337

337:                                              ; preds = %323, %298
  %338 = load %struct.ena_com_buf*, %struct.ena_com_buf** %9, align 8
  %339 = getelementptr inbounds %struct.ena_com_buf, %struct.ena_com_buf* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 4
  %341 = load i32, i32* @ENA_ETH_IO_TX_DESC_LENGTH_MASK, align 4
  %342 = and i32 %340, %341
  %343 = load %struct.ena_eth_io_tx_desc*, %struct.ena_eth_io_tx_desc** %8, align 8
  %344 = getelementptr inbounds %struct.ena_eth_io_tx_desc, %struct.ena_eth_io_tx_desc* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = or i32 %345, %342
  store i32 %346, i32* %344, align 8
  %347 = load %struct.ena_com_buf*, %struct.ena_com_buf** %9, align 8
  %348 = getelementptr inbounds %struct.ena_com_buf, %struct.ena_com_buf* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 4
  %350 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %351 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %350, i32 0, i32 5
  %352 = load i64, i64* %351, align 8
  %353 = sub nsw i64 %352, 1
  %354 = call i32 @GENMASK_ULL(i64 %353, i32 32)
  %355 = and i32 %349, %354
  %356 = ashr i32 %355, 32
  store i32 %356, i32* %17, align 4
  %357 = load %struct.ena_com_buf*, %struct.ena_com_buf** %9, align 8
  %358 = getelementptr inbounds %struct.ena_com_buf, %struct.ena_com_buf* %357, i32 0, i32 1
  %359 = load i32, i32* %358, align 4
  %360 = sext i32 %359 to i64
  %361 = load %struct.ena_eth_io_tx_desc*, %struct.ena_eth_io_tx_desc** %8, align 8
  %362 = getelementptr inbounds %struct.ena_eth_io_tx_desc, %struct.ena_eth_io_tx_desc* %361, i32 0, i32 3
  store i64 %360, i64* %362, align 8
  %363 = load i32, i32* %17, align 4
  %364 = load i32, i32* @ENA_ETH_IO_TX_DESC_ADDR_HI_MASK, align 4
  %365 = and i32 %363, %364
  %366 = load %struct.ena_eth_io_tx_desc*, %struct.ena_eth_io_tx_desc** %8, align 8
  %367 = getelementptr inbounds %struct.ena_eth_io_tx_desc, %struct.ena_eth_io_tx_desc* %366, i32 0, i32 1
  %368 = load i32, i32* %367, align 4
  %369 = or i32 %368, %365
  store i32 %369, i32* %367, align 4
  %370 = load %struct.ena_com_buf*, %struct.ena_com_buf** %9, align 8
  %371 = getelementptr inbounds %struct.ena_com_buf, %struct.ena_com_buf* %370, i32 1
  store %struct.ena_com_buf* %371, %struct.ena_com_buf** %9, align 8
  br label %372

372:                                              ; preds = %337
  %373 = load i32, i32* %14, align 4
  %374 = add nsw i32 %373, 1
  store i32 %374, i32* %14, align 4
  br label %294

375:                                              ; preds = %294
  %376 = load i32, i32* @ENA_ETH_IO_TX_DESC_LAST_MASK, align 4
  %377 = load %struct.ena_eth_io_tx_desc*, %struct.ena_eth_io_tx_desc** %8, align 8
  %378 = getelementptr inbounds %struct.ena_eth_io_tx_desc, %struct.ena_eth_io_tx_desc* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  %380 = or i32 %379, %376
  store i32 %380, i32* %378, align 8
  %381 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %382 = call i32 @ena_com_sq_update_tail(%struct.ena_com_io_sq* %381)
  store i32 %382, i32* %15, align 4
  %383 = load i32, i32* %15, align 4
  %384 = call i64 @unlikely(i32 %383)
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %388

386:                                              ; preds = %375
  %387 = load i32, i32* %15, align 4
  store i32 %387, i32* %4, align 4
  br label %398

388:                                              ; preds = %375
  %389 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %390 = call i32 @ena_com_close_bounce_buffer(%struct.ena_com_io_sq* %389)
  store i32 %390, i32* %15, align 4
  %391 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %392 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %391, i32 0, i32 0
  %393 = load i32, i32* %392, align 8
  %394 = load i32, i32* %13, align 4
  %395 = sub nsw i32 %393, %394
  %396 = load i32*, i32** %7, align 8
  store i32 %395, i32* %396, align 4
  %397 = load i32, i32* %15, align 4
  store i32 %397, i32* %4, align 4
  br label %398

398:                                              ; preds = %388, %386, %321, %310, %151, %132, %117, %93, %83, %61, %49
  %399 = load i32, i32* %4, align 4
  ret i32 %399
}

declare dso_local i32 @ENA_WARN(i32, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ena_com_sq_have_enough_space(%struct.ena_com_io_sq*, i32) #1

declare dso_local i32 @ena_trc_dbg(i8*) #1

declare dso_local i32 @ena_trc_err(i8*, i32, i32) #1

declare dso_local i32 @ena_com_write_header_to_bounce(%struct.ena_com_io_sq*, i8*, i32) #1

declare dso_local i64 @ena_com_meta_desc_changed(%struct.ena_com_io_sq*, %struct.ena_com_tx_ctx*) #1

declare dso_local i32 @ena_com_create_and_store_tx_meta_desc(%struct.ena_com_io_sq*, %struct.ena_com_tx_ctx*) #1

declare dso_local i32 @ena_com_close_bounce_buffer(%struct.ena_com_io_sq*) #1

declare dso_local %struct.ena_eth_io_tx_desc* @get_sq_desc(%struct.ena_com_io_sq*) #1

declare dso_local i32 @memset(%struct.ena_eth_io_tx_desc*, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ena_com_sq_update_tail(%struct.ena_com_io_sq*) #1

declare dso_local i32 @GENMASK_ULL(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
